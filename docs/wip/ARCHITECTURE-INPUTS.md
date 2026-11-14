# Inputs for 04 — hosting, MCP, the pull

**Status:** notes (2026-11-14), the raw material for [04 — Architecture](../concept/index.md).
Collected from the operator's other projects and their sessions, at the operator's request. Each
line says where it comes from; nothing here is decided until 04 says so.

## The operator's direction (2026-11-14)

- **A** records as files in git, schema-checked — agreed.
- **B** site generated from records — agreed in concept; **not on GitHub Pages**: hosted like the
  operator's other sites, behind Caddy, on a dedicated domain, deployable with Docker. Orrery is
  the inspiration.
- **C** one read-only MCP server, local and hosted — agreed; orrery is the inspiration.
- **D** a scheduled pull that opens a change for review — agreed ("we do the same on orrery for
  launches").
- **E** the CI gates — agreed.
- **F** search: a better engine than the site's own is welcome, since a server runs anyway.

Then, after the inputs below:

- **MCP server in TypeScript** (orrery's stack); **search with Orama** — one index built in CI,
  used by the site in the browser and by the MCP server, so people and agents get the same
  results.
- **Site generator: Zensical**, the maintained successor to MkDocs Material, now.
- **Domains**: **eutechreg.eu** (main) and **eu-tech-reg.eu** (redirect to it), bought by the
  operator on 2026-11-14. EURid whois still answered `AVAILABLE` for both the same day — re-check
  before DNS. DNS and vhosts are set up when the first version is ready to deploy, not before.
- **Agreed (operator, 2026-11-14)**: every page also says "independent project, not affiliated
  with the European Union", next to the not-legal-advice notice — a `.eu` name can read as
  official.
- **Shared family footer**: yes.
- **Operator-only chat** (2026-11-14), like orrery's: hidden, behind a login and a token, through
  the production LiteLLM to an open-weight model on OpenRouter; tools are the map's MCP tools.
  Orrery's references: `docs/rfc/RFC-037.md` A01.7–A01.8 (lab-api container, Google sign-in,
  allowlist, LiteLLM → OpenRouter | DGX) and `server/lab-api/ask.ts` (one tool registry for MCP
  and the ask-box). Recorded in 04 §7b.

## Hosting (from the websites session, chipi/humancopilot.eu, 2026-11-14)

Source of truth: humancopilot.eu `docs/adr/ADR-0001-static-sites-on-prod-vps.md`.

- **One Hetzner VPS**, `prod-podcast`, runs Close Listening, orrery, eval-harness and the
  websites. One shared **Caddy edge** owns :80/:443 (podcast_scraper ADR-114; now deployed by the
  prod session from chipi/infra).
- **Tenants never edit the edge**: each installs its own vhost files under its own name prefix
  into `/etc/caddy/sites/`, one site block per hostname, reverse-proxying to its own container on
  a **loopback port the prod session reserves**. The installer touches only its own files,
  validates the merged config with `caddy adapt`, reloads, restores on failure.
- **Origin lock**: :443 accepts only Cloudflare IPs; Let's Encrypt over HTTP-01 on :80;
  Cloudflare SSL mode Full (strict).
- **Deploy only through GitHub Actions** in the project's own repo, over the tailnet
  (`tag:gha-deployer`), prod host key pinned; no workstation SSHes to prod. Static releases as one
  directory per commit, an atomic `current` symlink, `nginx -t` first, health-check after, switch
  back on failure.
- **The closest example: chipi/eval-harness** `infra/` — a static site, an API service and an MCP
  server on the same box (Python, `mcp==2.3.0`, hashes pinned), with its own compose, Caddy files
  and deploy; moved off GitHub Pages on 2026-10-26.
- **The prod session reviews new infra before the first deploy** and runs the pre-public gate
  (podcast_scraper `docs/security/THREAT_MODEL.md`).
- **Domains**: registrar Hover; DNS on Cloudflare (free plan, one zone per domain, proxied, Full
  strict). Cutover order: records grey, certificate, then orange, then enable vhosts. Buying a
  domain and every DNS change are the operator's per-instance approvals.
- **Day one**:
  - Umami, with an `analytics.` tracker host on the site's domain;
  - GlitchTip — CSP reports to a `telemetry.` host for the site, the Sentry SDK for the MCP
    server;
  - strict CSP and security headers;
  - a hardened container: healthcheck, unprivileged, read-only root, limits, image pinned by
    digest;
  - logs through an Alloy drop-in, plus a Grafana dashboard and outside-in probes (homelab
    session);
  - no backups if nothing keeps state;
  - no `utm_*` on outbound links except to the operator's own sites;
  - whether to join the shared family footer is the operator's call.
- **Not known yet** (the prod session has them): the edge's current owner repo and layout after
  the move to chipi/infra; which loopback port is free.

## Orrery, from a survey of its repo (2026-11-14)

- **MCP**: TypeScript, Node 22, the v2 MCP SDK split packages (`@modelcontextprotocol/server`,
  `@modelcontextprotocol/node`), on a bare `node:http` server; streamable HTTP at `POST /mcp`;
  tools generated from a registry; stateless; data inlined into the bundle at build time.
- **Image**: two-stage, `node:22-alpine` runtime, no node_modules, non-root, `/health`
  healthcheck; CI builds it cold, smoke-tests it, pushes to ghcr with `main` and `sha-<7>` tags.
- **Deploy**: `deploy-prod.yml`, manual dispatch with a rollback input; compose on the VPS, all
  ports on loopback; Caddy vhosts in `ops/caddy/*.caddy`, each `import hardened`.
- **Search**: none beyond a build-time JSON index for one overlay.

## Orrery, from its session (2026-11-14)

"My view" in the orrery session's answers marks judgment; the rest it cited to commits and code.

- **Auth**: orrery's OAuth exists for a controlled beta allowlist and a cost-bearing LLM door,
  not for abuse seen. Its view for us: **start without auth, limit per IP**, keep per-call
  compute bounded, reject (never clamp) bad input.
- **Per-IP limiting behind Cloudflare + Caddy — get the header chain right** (orrery #597):
  behind Caddy every request is 127.0.0.1 (one global bucket); the first `X-Forwarded-For` hop is
  client-controlled (bypassable). The fix: Caddy sets a dedicated header from `{client_ip}`,
  the edge trusts Cloudflare's ranges (`trusted_proxies`, `client_ip_headers Cf-Connecting-Ip
  X-Forwarded-For`), and the app warns once if the header is missing.
- **Clients**: only Claude.ai custom connectors evidenced. **Log `clientInfo` from `initialize`
  from day one.** Claude.ai sent protocol version 2026-07-28, which the v1 SDK did not serve —
  every first POST failed until the move to the v2 SDK: **pin an SDK that serves the newest
  protocol, and log what clients send.** Stateless, no CORS, 65 tools: none was a problem.
- **The pull, lessons from the GitHub-cron period**:
  - a token or GitHub App that can open PRs — PRs opened with `GITHUB_TOKEN` do not trigger
    other workflows;
  - **a fixed branch name, force-updated**, so a pending refresh PR is replaced, not duplicated;
  - a **separate CI concurrency group** for the bot, so it never cancels human runs (and quote
    the group name in YAML);
  - make sure images exist for the commits a deploy may land on;
  - **a merged refresh PR must trigger the deploy**, or review becomes staleness;
  - **refuse to open a PR that empties or drastically shrinks the corpus**, and put the diff
    size in the PR body (orrery once wrote a launches file with 0 entries).
