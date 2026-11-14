# AGENTS.md — eu-tech-reg

This file layers on top of the global `~/.config/AGENTS.md`.
**Never duplicate, never contradict** rules from the global file. This file
captures only what's specific to *this* project.

If a global rule conflicts with project reality, that's a signal to either:

1. Update the global (if the new reality is generally true), or
2. State the deviation explicitly in this file with the *reason*.

---

## Project overview

An open, structured map of EU technology regulation for AI and robotics startups, their
investors, companies coming to the EU from outside, curious readers and their agents.
Article-level records (act → articles → obligations: who, what product, from when) that point to
EUR-Lex instead of copying the text, plus a plain-words explanation per act. Reached through a
MkDocs site, generated views (by role, date, relation) and an MCP server. Every answer carries
its citation, or is not given. Vision: `docs/concept/01-vision.md`.

---

## Stack

| Layer | Choice | Reason |
| --- | --- | --- |
| Records | TODO — YAML or JSON per act, schema checked in CI | Open question in `docs/wip/IDEA.md` |
| MCP server | TODO | Not decided |
| CI runner | GitHub Actions | matches `chipi` standard |
| Docs site | MkDocs Material → GH Pages | matches `chipi` standard |
| Licence | TODO — code and records | Open question in `docs/wip/IDEA.md` |

---

## Project-specific rules

1. **Not legal advice; cite or stay silent.** Said on every page and in every MCP answer. An
   answer that cannot point to an article is not given.
2. **Point, don't copy.** Link to EUR-Lex; quote only short passages where needed.
3. **Every fact sourced and dated.** A field without a source link and a read date is marked
   unchecked. Identifiers (CELEX, ELI, dates) are checked against EUR-Lex when written, never
   from memory.
4. **Hand-written fields stay human-reviewed.** Who an act applies to and the explanations are
   the operator's to approve; the scheduled pull only proposes changes to metadata.

---

## Where to look

- **Vision:** `docs/concept/01-vision.md`.
- **Active session log:** `docs/history/` (latest file = current state).
- **Ideas and plans:** `docs/wip/`.
- **Big decisions:** `docs/adr/`. **Proposals not yet decided:** `docs/rfc/`.
- **Gates:** `make ci-fast` (markdownlint), `make ci` (plus the strict docs build).

---

## What overrides this file

- Direct instruction in chat: a one-shot ask supersedes a default.
- The global `AGENTS.md` for universal rules — this file only narrows or adds context, never
  overrides global non-negotiables.
- Per-conversation memory: persistent operator preferences override cold defaults here.
