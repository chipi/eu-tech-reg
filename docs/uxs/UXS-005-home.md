# UXS-005 — Home

> **Status** · Draft v0.1 · 2026-11-14 · not built (the mockup has an index page only)
> **IA anchor** · [`§surfaces/home`](IA.md#surfaces) · [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [01 — Vision](../concept/01-vision.md) · [GUIDE-00](../guide/GUIDE-00-introduction.md)

---

## Why this UXS exists

The first page a founder, investor or agent builder lands on. It has one job: turn "EU regulation
is a wall" into "here is my way in" within one screen.

## Principles

- **The reader's question leads**, not the product: *what applies to what you build?*
- **Show the map, not a pitch.** No hero claims, no testimonials, no numbers we do not have.
- **The map's coverage is stated**: one act read, five not yet.
- **Both doors are visible**: browse here, or connect your agent.

## Scope

**In scope** · masthead, the opening question, the role chooser, the acts on the map, what changed
recently, the agent door, notices.

**Non-goals** · marketing sections, sign-up, newsletter (none exist in the product).

## Layout

### Desktop

```text
┌ Masthead ───────────────────────────────────────────────────────────┐
│ What applies to what you build?            ┌ terrain strip: the six ┐│
│ lede: an open map of EU tech regulation,   │ acts as bands, a course││
│ every fact cited to the official text.     │ starting in the AI Act,││
│ [ We build it and put it out ] [ We use it ] │ dashed through the rest││
│ → opens the role view (UXS-002)            └────────────────────────┘│
├─────────────────────────────────────────────────────────────────────┤
│ ON THE MAP                    │ RECENTLY CHANGED    │ FOR AGENTS      │
│ AI Act — Regulation …  →      │ (from the pull)     │ connect over MCP│
│ Not yet: GDPR, Data Act, …    │ date · what · cite  │ → /for-agents/  │
├─────────────────────────────────────────────────────────────────────┤
│ Notices footer                                                      │
└─────────────────────────────────────────────────────────────────────┘
```

| Region | Content |
| --- | --- |
| Opening | `display` question, `lede`, two founder-words choices that link to the role view; the legal terms follow on the next page |
| Terrain strip | The role view's strip (UXS-002), as the picture of the whole map |
| On the map | Each act read, with its number and a one-line scope; acts not yet read after "Not yet:" |
| Recently changed | Changes merged from the pull: date, what changed, cite line. Empty state: "Nothing has changed since the map last read the acts on [date]." |
| For agents | One sentence and the link to `/for-agents/` |

### Phone

The strip hides; the three lower regions stack in the order on the map, recently changed, for
agents.

## Component states

| Component | Default | Empty | Not yet |
| --- | --- | --- | --- |
| Role segment | Outlined; links to the role view with that role | — | — |
| Act entry | Title link, number, scope line | — | `ink-2`, dashed underline, after "Not yet:" |
| Change row | Date (`label`), what, cite line | Stated empty, with the last read date | — |

## Accessibility

- The opening question is the page's `h1`.
- The strip is an `img` with a text alternative; "On the map" carries the same information.

## Acceptance criteria

- [ ] No claim, number or quote that is not a record.
- [ ] Coverage visible in the first screen: acts read and acts not yet.
- [ ] Both doors (browse, agent) in the first screen at 1440px.
- [ ] Recently changed rows each carry a cite line.
