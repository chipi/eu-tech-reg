# UXS-002 — Your role across every act

> **Status** · Draft v0.1 · 2026-11-14 · mockup built ([`role.html`](../mockups/role.html)),
> reviewed (ship)
> **IA anchor** · [`§surfaces/role`](IA.md#surfaces) · [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §3 (the shared vocabulary)

---

## Why this UXS exists

A startup is often several roles at once, and each act names them differently. This surface answers
"what applies to someone who makes it, across every act" in one view, with each act's own word
beside the shared one.

## Principles

- **The act's own term is always shown.** The shared role is our grouping, said as such.
- **Nothing filled from memory.** An act's term appears only once it is read from its definitions
  article; until then the row says "Not yet read".
- **The course runs only through acts the map has read.** Unread acts show as terrain marked "not
  yet read", with no course: dashed keeps one meaning across the site, a date not reached yet
  (operator, 2026-11-14, after the finish review).

## Scope

**In scope** · title, the explanation of shared roles, the role segments, the six-act strip, the
acts table, the "nothing from memory" note.

**Non-goals** · per-article obligations (they live on the act page); roles beyond the first two
("makes it", "uses it in their business").

## Layout

### Desktop

```text
Map / Roles
What you do, across every act
lede: start from what you do; each act's legal name for it shown beside yours
[ We build it and put it out under our name | We use it in our work ]
┌ AI Act ┬ GDPR ┬ Data Act ┬ Machinery ┬ CRA ┬ PLD ┐  six-act strip
│ ▵─(AI)                                           │  course: only in read acts;
│        not yet read  not yet read …              │  none through the rest
└──────────────────────────────────────────────────┘
ACT | WHAT THE ACT CALLS YOU | ARTICLES TO READ | STATE
AI Act | Provider | Article 16 …, the route … | Titles checked …
GDPR | — | Not yet read | Next in the first wave
…
```

### Phone (≤ 640px)

The strip hides. The table stacks into one block per act, each cell as a label and a single value.

## Component states

| Component | Default | Selected | Not read |
| --- | --- | --- | --- |
| Role segment | Outlined | Filled `course`; table and strip show that role | — |
| Act row | Act, term in `title` ink, articles linked, state with cite | — | All cells `ink-2`, term "—", "Not yet read" |
| Strip | The read act tinted as terrain, dashed contour boundaries | — | Blank ground, no course, "not yet read" |

## Accessibility

- The strip is an `img` with a title; the table carries the same information.
- The table has a caption; on phones each value keeps its label.

## Acceptance criteria

- [ ] Every filled term cites the definitions article it was read from.
- [ ] No term appears for an act that has not been read.
- [ ] Phone: no value falls into the label column.
- [ ] Only the selected role's rows show.

## Open

- More shared roles as acts are read (bring it in, sell it on, handle personal data…).
