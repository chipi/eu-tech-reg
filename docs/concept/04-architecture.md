# 04 — Architecture

> **Status** · Draft v0.1 · 2026-11-14 — written from the direction the operator agreed on
> 2026-11-14 ([inputs](../wip/ARCHITECTURE-INPUTS.md)), with its decisions at the bottom. The
> mockup comes next, then the build.

*How the map is built: where the records live, what CI makes of them, what runs in production,
and how a change in EU law reaches a reader. Read this before writing code.*

The [project concept](02-project-concept.md) says what the map holds and the
[data catalog](03-data-catalog.md) where each fact comes from. This document is the machine
around them.

---

## 1. The whole picture

```text
                 Cellar (SPARQL + XHTML)
                        │  weekly pull — opens a PR, never merges
                        ▼
  ┌──────────────────── git: chipi/eu-tech-reg ────────────────────┐
  │ records/  hand-written + machine fields, YAML, one folder/act   │
  │ schema/   JSON Schema for every record kind                     │
  │ pull/     SPARQL queries + the pull script                      │
  │ build/    validate → bundle → site pages → search index         │
  │ mcp/      the MCP server                                        │
  │ docs/     concept, RFCs, ADRs (this site's project section)     │
  └─────────────────────────────────────────────────────────────────┘
                        │  CI on every push: gates (section 8)
                        ▼
         bundle.json + search index  ──►  site (Zensical, static)
                        │                       │
                        ▼                       ▼
                MCP server image          static release
                        │                       │
                        └──── prod VPS, behind the shared Caddy edge ──── Cloudflare
                              eutechreg.eu · mcp.eutechreg.eu
```

**One rule holds it together: everything served is built from git, by CI, into one bundle.** The
site and the MCP server read the same bundle and the same search index, so a person and an agent
always get the same facts. Nothing in production writes data; there is no database and no state
to back up.

## 2. Records: files in git

Agreed (A). One folder per act, YAML files, every change a pull request.

```text
records/
  acts/
    ai-act/
      act.yaml          # identifiers, type, status, reach — machine + hand
      structure.yaml    # pass 1: every article and annex, carries obligations or not
      dates.yaml        # which part applies from when
      obligations/      # pass 2: one file per article that carries obligations
        art-009.yaml
      relations.yaml    # machine: amends, amended by, corrigenda, consolidated versions
      guidance.yaml     # delegated/implementing acts, guidelines, codes of practice
      standards.yaml    # pointers only
      anchors.yaml      # machine: every anchor in the consolidated XHTML (for CI's link check)
  vocabulary/
    roles.yaml  products.yaml  topics.yaml
explanations/
  ai-act.md             # the plain-words page (02, section 4)
```

**YAML** because it is written by hand: comments, multi-line text, readable diffs. **JSON
Schema** (`schema/`) checks every file in CI.

### Provenance per record, not per field

02 says every field carries a citation, read date and state. Written literally, that makes
every YAML file three times longer and hard to review. Proposed: **a record carries one
provenance block that covers all its fields**, and a field gets its own block only where its
source differs.

An example in that shape — the dates are the ones read in the consolidated Article 113 on
2026-11-14 (03); the layout is the proposal:

```yaml
# records/acts/ai-act/dates.yaml
- id: ai-act/date/high-risk-annex-iii
  applies_from: 2027-12-02
  parts: "Chapter III, Sections 1–3 (except Article 6(5)), for AI systems high-risk under Article 6(2) and Annex III"
  cite:
    text: 02024R1689-20260727#art_113      # the consolidated text, where it is read
    set_by: 32026R1744                      # the act that set it: the Digital Omnibus on AI
  read: 2026-11-14
  state: checked
  owner: hand
- id: ai-act/date/high-risk-annex-i
  applies_from: 2028-08-02
  parts: "Chapter III, Sections 1–3 (except Article 6(5)), for AI systems high-risk under Article 6(1) and Annex I"
  cite: { text: 02024R1689-20260727#art_113, set_by: 32026R1744 }
  read: 2026-11-14
  state: checked
  owner: hand
```

`cite` holds identifiers, not URLs; the build turns them into EUR-Lex links for people and keeps
them as identifiers for agents. `cite.set_by` is the published act that set the rule — the
original act or an amending act (03, decision 2).

## 3. The build

One toolchain for everything we write: **TypeScript on Node 22**, as orrery. Zensical (Python)
builds the site and nothing else.

| Step | In | Out |
| --- | --- | --- |
| `validate` | `records/`, `schema/` | schema errors; the gates of section 8 |
| `bundle` | records | `bundle.json` — every `checked` and `machine` record, citations resolved to links, stale markers computed (02, section 7); `unchecked` left out |
| `pages` | bundle, `explanations/` | Markdown pages for every act, view and the re-reading queue, generated into the site's source |
| `index` | bundle | the Orama search index (section 6) |
| `site` | pages + `docs/` | the static site (Zensical, strict) |

Generated pages are build output, not committed: the records are the source.

## 4. The site

Agreed (B): Zensical, static, generated from the records.

- **One site, two parts**: *the map* (acts, views, search — generated) and *the project*
  (concept, RFCs, ADRs — today's `docs/`). Proposed; see open questions.
- **Every page** carries the two notices — not legal advice; independent, not affiliated with the
  EU — from the theme template, so no page can leave them out.
- **Search** is our own page using the shared Orama index in the browser (section 6), replacing
  Zensical's built-in search for the map.
- **Served** as static files by an unprivileged nginx container, releases as one directory per
  commit with an atomic `current` switch — the websites session's pattern (ADR-0001 there).
- **Strict CSP** and security headers from our nginx config; Umami through an `analytics.`
  host; CSP reports to a `telemetry.` host (GlitchTip).

## 5. The MCP server

Agreed (C): TypeScript, orrery as the model.

- **SDK**: the v2 MCP SDK split packages, on a bare `node:http` server (orrery's stack). Pinned
  to a version that serves the newest protocol — orrery's first requests from Claude.ai failed
  on an older SDK.
- **Transport**: streamable HTTP at `POST /mcp`, stateless; the same tools over stdio for anyone
  running it next to their agent.
- **Data**: `bundle.json` and the search index, baked into the image at build time. No network
  calls, no database.
- **Tools**: the seven from 02 (section 5) plus `search(query, filters)`. Input is validated and
  out-of-range input rejected, never clamped; every call's work is bounded.
- **Every answer** in the envelope of 02: facts with citations and read dates, what the answer
  does not cover, and the two notices.
- **Provenance and citation travel with every fact** (operator, 2026-11-14). Whatever an agent
  takes from the map, it can pass on with its proof and a link back here. Each fact in an answer
  carries:

  | Field | What | Example |
  | --- | --- | --- |
  | `source` | the official text on EUR-Lex, to the article | `…?uri=CELEX:02024R1689-20260727#art_113` |
  | `set_by` | the published act that set it | Regulation (EU) 2026/1744, with its EUR-Lex link |
  | `map_url` | **our page for this record**, a permalink | `https://eutechreg.eu/acts/ai-act/dates/#high-risk-annex-iii` |
  | `record_id` | the stable id | `ai-act/date/high-risk-annex-iii` |
  | `read`, `state` | when it was read, checked or machine, any stale marker | `2026-11-14`, `checked` |
  | `map_version` | the commit the bundle was built from | `0eda5aa` |

  And every answer ends with one line an agent can copy as is: *"Source: EU tech regulation map,
  eutechreg.eu (CC BY 4.0), built from EUR-Lex; information, not legal advice; independent, not
  affiliated with the EU."* — the attribution CC BY 4.0 asks for.
- **Permalinks never break.** A record's id never changes; a record that is retired keeps its
  page, marked *retired*, pointing to what replaced it — so a link an agent handed on years ago
  still lands.
- **No login.** Public law, read-only. Rate-limited **per client IP**, with the header chain
  orrery learned (its #597): the edge trusts Cloudflare's ranges and sets a dedicated client-IP
  header; the server keys on that header only and warns once if it is missing. Never the socket
  address (all of it is 127.0.0.1 behind Caddy) and never a client-supplied
  `X-Forwarded-For` hop.
- **Logged from day one**: `clientInfo` and the protocol version from `initialize`, per call
  the tool and its duration — no query text that could identify a person. Errors to GlitchTip
  via the Sentry SDK.
- **Image**: two-stage, `node:22-alpine`, non-root, read-only root, resource limits, `/health`,
  pinned by digest; CI builds it cold and smoke-tests it before it is pushed to ghcr.

## 6. Search

Agreed (F): Orama, one index for people and agents.

- **Built in CI** from the bundle: acts, articles, obligations, dates, guidance, the glossary.
- **Facets**: act, role (shared and the act's own term), product kind, topic, binding force,
  applies-from date.
- **The same index file** is served as a static asset to the browser and loaded by the MCP
  server's `search` tool — the same query gives the same results on the site and over MCP.
- **Synonyms from the shared vocabulary**, so "robot maker" finds *manufacturer* and *provider*.
- **Later, if needed**: search by meaning (Orama supports vectors). It needs embeddings at build
  time and a model at query time; not in the first version.

## 7. The pull

Agreed (D), with orrery's lessons.

- **A weekly GitHub Action** runs the SPARQL queries in `pull/queries/` (one file per question,
  03 section 4) and fetches a consolidated text's XHTML when a new version appears.
- **It writes only `owner: machine` fields** (metadata, relations, `anchors.yaml`) and flags the
  act's hand-written records for re-reading when the act changed (02, section 7).
- **It opens a pull request on one fixed branch** (`pull/cellar`), force-updated, so a newer run
  replaces a waiting PR instead of adding another. The body lists every change with the old
  value, the new value and the link.
- **It never merges.** A person reviews; **merging triggers the deploy**, so review never turns
  into staleness.
- **It refuses** a run that would empty an act or shrink it sharply, and says why in the run
  log.
- **A token that can open PRs that trigger CI** — a GitHub App or a fine-grained token, not the
  default `GITHUB_TOKEN`, whose PRs start no workflows.
- **Its own CI concurrency group**, so it never cancels a person's run.

Age-based flags (02, section 7) need no pull: the build computes them from read dates.

## 8. CI gates

Agreed (E). What every push must pass, in `make ci-fast` and `make ci`:

| Gate | Fails when |
| --- | --- |
| Schema | a record does not match its schema |
| Cite or stay silent | a record that would be served has no citation or no read date |
| Unchecked stays out | an `unchecked` record reaches the bundle |
| Anchors exist | a citation points to an anchor that is not in the act's `anchors.yaml` |
| Notices | a generated page or an MCP answer lacks either notice |
| Provenance | an MCP answer has a fact without `source`, `set_by`, `map_url`, `record_id`, `read`, `state` or `map_version`, or lacks the attribution line |
| Permalinks | a record id that existed in the last deployed bundle has no page in the new one |
| MCP | a tool's test fails, or the image's smoke test (start, `/health`, one call) fails |
| Docs | markdownlint, or Zensical's strict build (missing page or anchor) |
| Secrets | the secrets scan finds anything |

The anchor check runs offline against `anchors.yaml`, which the pull keeps current from Cellar —
CI never depends on EUR-Lex or Cellar being up.

## 9. Hosting and deploy

Agreed: the prod VPS, behind the shared Caddy edge, Docker — the websites session's pattern;
chipi/eval-harness `infra/` is the closest example (a static site and an MCP server on the same
box).

- **Hostnames**: `eutechreg.eu` (the site), `mcp.eutechreg.eu` (the MCP server), `analytics.` and
  `telemetry.` (Umami, GlitchTip); `eu-tech-reg.eu` redirects to `eutechreg.eu`.
- **Containers**: `web` (nginx, static releases) and `mcp`, each on a loopback port the prod
  session reserves; our own compose project.
- **Edge**: our vhost files under our own name prefix, installed only when listed, validated with
  `caddy adapt`, restored on failure; the edge's `hardened` snippet; origin lock to Cloudflare.
- **Deploy**: only through `.github/workflows/deploy-prod.yml`, over the tailnet, prod host key
  pinned; triggered by a merge to `main` once the gates pass; health checks after, automatic
  switch back on failure.
- **Observability**: an Alloy drop-in for our logs, a Grafana dashboard, outside-in probes
  (homelab session).
- **Before the first deploy**: the prod session reviews the infra and runs the pre-public gate;
  DNS moves to Cloudflare (the operator's per-instance approvals). Until then, the docs stay on
  GitHub Pages.

## 10. Locally

| Target | Does |
| --- | --- |
| `make ci-fast` | the fast gates |
| `make ci` | every gate, the bundle, the site |
| `make docs-serve` | the site with the map, on 127.0.0.1 |
| `make mcp-dev` | the MCP server over HTTP on 127.0.0.1, against the local bundle |
| `make mcp-stdio` | the same over stdio, to connect a local agent |
| `make pull-dry` | the pull against Cellar, printing what it would change, writing nothing |

## 11. What comes next

1. **The mockup** (operator, 2026-11-14): an act page, a view by role, the search page and a
   cited MCP answer, with real AI Act content — to nail the approach before building.
2. **Phase 1, in slices**: the record schema and the AI Act's `act.yaml` and `structure.yaml`
   (pass 1, generated from the Cellar text); the bundle and the gates; the site pages; the MCP
   server; the pull; then pass 2, the obligations, article by article.
3. **The first deploy**, when phase 1 is complete enough to show.

Each slice that makes a structural choice closes into an ADR.

## 12. Decisions

Agreed by the operator on 2026-11-14:

1. **Provenance per record**, with a per-field override where a field's source differs
   (section 2) — this refines 02's "every field".
2. **One site with two parts**: the map, and the project docs (concept, RFCs, ADRs).
3. **MCP at `mcp.eutechreg.eu`**, its own container, logs and rate limit.
4. **The pull opens PRs with a GitHub App**, scoped to this repo, not a personal token.
5. **No staging at first**: CI builds and smoke-tests the images, and a failed deploy switches
   back; staging when people depend on the site.
6. **Provenance and citation, with a link back to the map, in every MCP answer** (section 5).
