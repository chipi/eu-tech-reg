# UXS-008 — The relation map

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/relations`](IA.md#surfaces) · `/acts/<act>/relations/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §2 (relation records) ·
> [03 — Data catalog](../concept/03-data-catalog.md) (relations from Cellar)

---

## Why this UXS exists

Acts change each other. A curious reader asks what the Digital Omnibus changed; a founder needs to
know that the Machinery Regulation was amended by the same act. This view draws one act's relations:
what amends it, what it amends, what implements it, what is proposed.

## Principles

- **Every edge is a record from Cellar**, with its CELEX and date.
- **Binding force is visible**: amending and implementing acts are binding, guidelines are not.
- **Proposed is not adopted**: proposals are drawn dashed, with their status.

## Scope

**In scope** · the act at the centre, its relations grouped by kind, the edge labels, a list view
of the same.

**Non-goals** · the full EU legal graph; citations ("cites") in the first version.

## Layout

```text
Map / AI Act / Relations
What changes the AI Act, and what it changes

 AMENDED BY                    THE ACT                    IMPLEMENTED BY
 Reg. (EU) 2026/1744 ───────▶ ┌──────────────┐ ◀──────── Impl. Reg. (EU) 2025/454
 Digital Omnibus on AI         │   AI Act     │ ◀──────── Impl. Reg. (EU) 2026/1755
 8 Jul 2026                    │ 2024/1689    │ ◀──────── Impl. Reg. (EU) 2026/2487
   also amends: Reg. (EU)      └──────────────┘
   2018/1139, the Machinery          │                  GUIDANCE (non-binding)
   Regulation (EU) 2023/1230         ▼                  Art. 50 guidelines, 12 Nov 2026
                                AMENDS: 9 acts
                                (listed in Cellar; names not yet read)
```

The relations shown are real, read from Cellar on 2026-11-14; the nine acts the AI Act amends are
counted there but not yet named on the map.

| Region | Content |
| --- | --- |
| Centre | The act: name, number |
| Groups | Amended by · amends · implemented by · guidance · proposed — each edge with CELEX, date, binding force |
| List view | The same as a table, the default below 1100px |

## Component states

| Edge | Drawn as |
| --- | --- |
| Amends / amended by / implements | Solid, `ink`, arrow toward the act changed |
| Guidance | Solid `rule` line, label "non-binding" |
| Proposed | Dashed, label "proposed", with its status |

Purple is not used for edges: relations are the law's, not the reader's.

## Accessibility

- The list view is the primary content; the drawing is an `img` with a summary.

## Acceptance criteria

- [ ] Every edge has a CELEX and a date.
- [ ] Proposals are dashed and labelled; nothing proposed is drawn as adopted.
- [ ] Unnamed related acts are counted and said to be not yet read.
