# UXS-003 — Search

> **Status** · Draft v0.1 · 2026-11-14 · mockup built ([`search.html`](../mockups/search.html)),
> reviewed (ship)
> **IA anchor** · [`§surfaces/search`](IA.md#surfaces) · [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [04 — Architecture](../concept/04-architecture.md) §6 (one Orama index for the site
> and MCP)

---

## Why this UXS exists

Search is the way in for a reader with a word in mind ("high-risk", "Article 50"). It searches the
same index agents query over MCP, so a person and an agent find the same records.

## Principles

- **Results are records, not pages.** Each result is one article, date or document, with its
  citation.
- **Filters are the record's own facets**: act, kind, binding force.
- **The map's limits are stated**: acts not yet on the map show in the filters as "not yet", and
  an empty result says what the map covers.

## Scope

**In scope** · title, search box, filters, result count, results, empty state, the note on the
index.

**Non-goals** · ranking, typo tolerance and synonyms (behaviour, in the build); search as an overlay
(open).

## Layout

### Desktop

```text
Map / Search
Search the map
[🔍 high-risk                                         ]
ACT            │ 8 records in the map
 ☑ AI Act      │ Article 6 — Classification rules for high-risk AI systems
 ☐ GDPR · not  │ AI Act · Article · EUR-Lex · read 14 Nov 2026
KIND           │ ─────────────────────────────────────────
 ☑ Articles …  │ …
BINDING FORCE  │
```

| Region | Size | Content |
| --- | --- | --- |
| Filters | 260px column | Act, kind, binding force; disabled acts read "· not yet" |
| Results | rest, 78ch | Count, then title (`title`) and a meta line: act · kind · EUR-Lex · read date |

### ≤ 1100px

The filters fold into a "Filters" disclosure above the results, closed by default, so the first
result is in the first screen. The disclosure marker is a drawn chevron, not a text glyph.

## Component states

| Component | Default | Focus | Empty | Disabled |
| --- | --- | --- | --- | --- |
| Search box | 2px `course` border | 4px `course-tint` halo | — | — |
| Facet | `course` checkbox, label | Outline | — | Unchecked, label "· not yet" |
| Result | Title ink, meta line `ink-2` | Outline on title link | "Nothing in the map matches…", says what the map covers | — |

## Accessibility

- The result count is a live region.
- Results sit under a (visually hidden) "Results" heading, so headings do not skip a level.
- No label above a heading: the kind is in the meta line after the title.

## Acceptance criteria

- [ ] Every result carries its EUR-Lex link and read date.
- [ ] No kicker labels above result titles.
- [ ] At 390px the first result is in the first screen.
- [ ] Empty state names what the map covers.

## Open

- Page or overlay.
