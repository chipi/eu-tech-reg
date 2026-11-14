# Idea — an open map of EU tech regulation

**Status:** idea (operator, 2026-11-14). Nothing built yet.

## Why

The operator wants to learn EU regulation on technology — AI, data, privacy, security, products,
machinery — and build while learning: one act at a time, each a small finished piece. The
operator's robotics work ([robotics-lab](https://github.com/chipi/robotics-lab)) needs the same
research, in particular the Machinery Regulation, the AI Act, the Cyber Resilience Act and product
liability.

## What it is

A **map, not a library**: structured records about each act that point to the official text. It
does not copy or redistribute the texts.

- **One record per act**: its EUR-Lex identifiers (CELEX, ELI), title and short name, status,
  the dates each part applies, who it applies to (maker, importer, provider, deployer, operator,
  controller …), the topics and products it covers, how it relates to other acts (amends, is
  amended by, refers to, sits in an annex of), and official guidance and standards — every field
  with a source link and the date it was read.
- **One explanation per act**, in plain words, written while learning it.

## Ways in

Three ways to reach the same records; no search engine of our own at first.

1. **Site search** — a static docs site (MkDocs Material, strict build, GitHub Pages, as in the
   operator's other projects) with one page per act; its built-in search covers every page.
2. **Generated views** — by role ("what applies to a robot maker"), by date ("what starts in
   2027"), by relation ("what amends what"): a timeline and a relation map.
3. **MCP server, from the start** — so an agent consults it. First tools:
   - `find_acts(topic?, role?, product?)` — acts matching a question;
   - `get_act(id)` — one record, with its sources;
   - `what_applies(role, product, date)` — the acts and the parts in force on a date;
   - `timeline(from, to)` — the dates that start in a window;
   - `related(id)` — what amends, is amended by, or refers to an act.

Every answer carries its source links and read dates, so the agent can cite them.

A full-text search over the legal texts themselves is a later option, only if the records prove
not enough.

## Kept current automatically

EUR-Lex publishes metadata for every act (dates, amendments, consolidated versions), reachable
through its web services and the Publications Office's Cellar (SPARQL). A scheduled job pulls the
metadata for the acts in scope, updates the records, and opens a change for review when a date or
an amendment changes — for example while the Digital Omnibus moves AI Act dates. Hand-written
fields (who it applies to, explanations) stay human-reviewed.

## First scope: 8 acts (operator, 2026-11-14)

| Act | Area |
| --- | --- |
| GDPR — Regulation (EU) 2016/679 | Privacy |
| AI Act — Regulation (EU) 2024/1689 | AI |
| Data Act — Regulation (EU) 2023/2854 | Data |
| Data Governance Act — Regulation (EU) 2022/868 | Data |
| NIS2 — Directive (EU) 2022/2555 | Security |
| Cyber Resilience Act — Regulation (EU) 2024/2847 | Security, products |
| Machinery Regulation — Regulation (EU) 2023/1230 | Machinery |
| Product Liability Directive — Directive (EU) 2024/2853 | Products |

Identifiers above are from memory; each is checked against EUR-Lex when its record is written.
Pending amendments (the Digital Omnibus on AI) are tracked as relations, with their status.

## What exists (read 2026-11-14)

| Source | What | Difference |
| --- | --- | --- |
| [Bruegel dataset](https://bruegel.org/dataset/dataset-eu-legislation-digital-world) | EU digital legislation classified into 12 categories; third edition 6 June 2024 | A PDF, not machine-readable, no licence stated; a reference to cite, not data to seed from |
| [IAPP](https://iapp.org/resources/article/eu-digital-laws-mapping-interplays-gdpr-series) | Maps of how the digital laws interact | Articles |
| [Fieldfisher tech regulation](https://techreg.fieldfisher.com/) | Law firm's regulation site | Commentary, not data |
| Law-firm handbooks and timelines (Linklaters, Addleshaw Goddard, Vischer) | Overviews, timelines | PDFs and posts |
| [EU regulations tracker (Patrick Munro)](https://patrick-munro-planitlegal.github.io/EU-Regulatory-Projects/eu_regulations_tracker.html), [EU Digital Legislation Hub](https://trusty-web.pages.dev/blog/eu-legislation) | Trackers and lists | Licences and formats not checked |
| [Digital Policy Alert](https://digitalpolicyalert.org/digest/dpa-digital-digest-eu27) | A digest of policy changes | News, not records |

What this project adds, if the check holds: open, structured records with official identifiers,
role- and date-based views, an MCP server, and automatic updates from EUR-Lex.

## Principles

- **Point, don't copy**: link to EUR-Lex; quote only short passages where needed.
- **Every fact sourced and dated**; unchecked fields marked as such.
- **Not legal advice**, said on every page and in every MCP answer.
- **Small pieces**: an act is done when its record, its page and its MCP answers are complete.

## Order

1. The record format, with one act written fully (the Machinery Regulation, which robotics-lab
   needs first).
2. The docs site and the MCP server reading that one record.
3. The EUR-Lex metadata pull for that act.
4. The other seven acts, one at a time.
5. Views: timeline, by role, relations.

## Open questions

1. EUR-Lex reuse terms: may we store and republish short extracts (believed free with
   acknowledgement under Commission Decision 2011/833/EU; not checked).
2. Licence: code (the operator's projects use MIT) and records (perhaps CC BY 4.0).
3. Record format: YAML files per act, or JSON; a schema checked in CI.
4. Where the MCP server runs: locally only, or also hosted.
5. Whether to cover national implementations of directives (NIS2 and the Product Liability
   Directive are transposed by each member state) — not at first.
