# UXS-013 — Synthesized reads and the matrix

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/reads`](IA.md#surfaces) · `/reads/`, `/reads/acts/<act>/`,
> `/reads/examples/<slug>/`, `/reads/<act>/<slug>/` · [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §5a (syntheses) ·
> [04 — Architecture](../concept/04-architecture.md) §7a · [UXS-012](UXS-012-worked-examples.md)

---

## Why this UXS exists

People do not have time to read an act, and can only search for what they already know to look for
(operator, 2026-11-14). Synthesized reads are the short versions: a read per act, a read per worked
example, and a read where the two meet — the **matrix**. They are EU Tech Reg's interpretation,
generated from the map's records, reviewed by the legal advisor, and labelled as such on every
screen.

## Principles

- **Interpretation, unmistakably labelled.** Every read opens with the synthesis label; records and
  quotes inside it look different from the interpretation around them.
- **Every claim highlighted back to the text.** Each statement links to the record and the article
  it rests on; the read ends with the full list of citations behind it.
- **No do's and don'ts.** The three allowed sections are *what the texts ask of companies like
  this*, *questions to bring to counsel* and *common misreadings*.
- **Versioned.** A read names the map version, the consolidated texts it was built from, and its
  review; when a record it rests on changes, the read is flagged and re-reviewed.
- **A picture where it replaces a page** — figures built from the records (see the figure rule
  below).

## Scope

**In scope** · the matrix index, a read page (all three kinds), the synthesis label, the figure
slot, the citation list.

**Non-goals** · generating on demand for a visitor (reads are generated offline and published);
any read the legal advisor has not passed.

## Layout

### The matrix (`/reads/`)

```text
Map / Reads
Short reads, built from the map            [Synthesis · EU Tech Reg's interpretation]
             │ AI Act  │ GDPR     │ Data Act │ CRA      │
─────────────┼─────────┼──────────┼──────────┼──────────┤
 (the act)   │ read ●  │ not yet  │ not yet  │ not yet  │   ● = read published
 Picklane    │ read ●  │ —        │ —        │ —        │   — = not relevant to
 Ledgerline  │ read ●  │ not yet  │ not yet  │ —        │       this example
 …           │         │          │          │          │   not yet = act not read
Filters: stage · domain · what they do · trigger point (UXS-012 taxonomy)
```

### A read

```text
Map / Reads / AI Act × Picklane Robotics
[Synthesis · EU Tech Reg's interpretation · reviewed by the legal advisor on <date> · map <version>]
<one-paragraph summary, in founder words>
FIGURE (optional) — built from the records, with its own cite line
WHAT THE TEXTS ASK OF COMPANIES LIKE THIS   bullet → highlighted, linked to the record + article
QUESTIONS TO BRING TO COUNSEL               each tied to the article it comes from
COMMON MISREADINGS                          "Article 6 does not …" — with the text that says so
NOT COVERED                                 acts not read, national law, standards' content
CITATIONS                                   every article and record this read rests on
```

## Component states

| Component | Default | Stale | Not yet |
| --- | --- | --- | --- |
| Synthesis label | Solid hairline box, `label` type, the three facts (interpretation, review, version) | Adds "a source changed — being re-reviewed" | — |
| Highlight | A `course-tint` underline on the claim, linking to its record | — | — |
| Matrix cell | "read" with a filled dot | Dot as a dashed ring, "being re-reviewed" | "not yet" in `ink-2`; "—" where the act is not relevant |

The synthesis label is solid, not dashed: dashed means "not yet" (05 §6).

## The figure rule

A figure that carries legal facts is an **SVG built from the records** — its labels are records,
its text selectable, its cite line under it — and it ships as is. Generated illustration (e.g.
Higgsfield) may come later only as illustration: text-free, or with every word checked by the
legal advisor. The rule exists because image models write plausible law into pictures (seen on
2026-11-14).

## Accessibility

- Every figure has a text equivalent in the read itself; no fact lives only in a picture.
- Highlights are links with names ("Article 16 on EUR-Lex"), not colour alone.

## Acceptance criteria

- [ ] The synthesis label is in the first screen of every read.
- [ ] Every statement links to a record and an article; the read ends with its citation list.
- [ ] No do's and don'ts, no "you must"; the three allowed sections only.
- [ ] The read names its map version and review; stale reads are marked.
- [ ] Every figure is built from records and has its cite line.
