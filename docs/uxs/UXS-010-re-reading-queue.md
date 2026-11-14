# UXS-010 — The re-reading queue

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/queue`](IA.md#surfaces) · `/project/re-reading/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §7 (flagged for
> re-reading)

---

## Why this UXS exists

Facts go stale: an act is amended, a read date ages. 02 §7 flags them; this page is where the
maintainer finds them, oldest first, and where any reader can see how fresh the map is.

## Principles

- **Public, not hidden**: staleness is part of the map's honesty.
- **Why it is flagged is stated**: the act changed, or the read date passed its threshold.
- **Oldest first**, so the queue drains in order.

## Scope

**In scope** · summary line, the flagged records, the reason and since when, links to the record
and its source, the empty state.

**Non-goals** · editing (changes go through review in git).

## Layout

```text
Project / Re-reading queue
Due for re-reading
Nothing is due. Every record was read on 14 Nov 2026; the next check falls due on
13 May 2027 (180 days), or earlier if an act changes.

When records are due:
┌ REASON ───────────────┬ RECORD ─────────────────────┬ READ ───────┬ ──────┐
│ The act changed after │ ai-act/article/16           │ 14 Nov 2026 │ open  │
│ this was read         │ Article 16 — Obligations …  │             │ source│
│ Due for re-checking   │ ai-act/date/…               │ …           │       │
└───────────────────────┴─────────────────────────────┴─────────────┴───────┘
```

The empty state is today's real state: every record was read on 2026-11-14, and 180 days later is
2027-05-13. The table rows are an illustration of the layout.

| Region | Content |
| --- | --- |
| Summary | Count due, or the empty-state sentence with the next due date |
| Table | Reason, record id and title, read date, links to the record and its EUR-Lex source |

## Component states

| Reason | Marker |
| --- | --- |
| The act changed after this was read | Dashed underline under the read date, the words |
| Due for re-checking (age) | Dashed underline, the words |
| Metadata not refreshed since … | Dashed underline, the words |

## Acceptance criteria

- [ ] Every row states its reason in words.
- [ ] The empty state names the next due date.
- [ ] Sorted oldest read date first.
