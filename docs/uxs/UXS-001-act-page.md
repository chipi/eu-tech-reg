# UXS-001 — The act page

> **Status** · Draft v0.3 · 2026-11-14 · mockup built ([`ai-act.html`](../mockups/ai-act.html)).
> v0.2 is the bold pass after the Impeccable critique (24/40): the founder's question leads,
> every route row carries its dates, and the lower band became a sequence. v0.3 takes the finish
> review: today and the next date get different marks, the course climbs the whole map, the map
> stays beside the question down to 901px, and a dark theme (operator, 2026-11-14)
> **IA anchor** · [`§surfaces/act`](IA.md#surfaces) · [`§shell-regions`](IA.md#shell-regions) ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §4–5 ·
> [05 — Design system](../concept/05-design-system.md)

---

## Why this UXS exists

The act page is where a founder first meets an act: which articles to read for what they do, and
from when each one applies. It carries the signature of the whole product, the course over fixed
terrain.

## Principles

- **The founder's question leads.** The page title is the question, *What do you do with the AI?*;
  the act's name and number come right after it, in the sentence that explains the page.
- **The reader answers what they do; the page never decides their role.** Four answers: *We build
  an AI system and offer it under our name*, *We use an AI system in our work*, *We build a
  general-purpose AI model*, *Not high-risk, or not sure yet* (operator, 2026-11-14). Each answer
  shows the act's own word for it, small, under the founder's words.
- **The map is a way into the text, not a summary instead of it.** Every control opens an article.
- **The stages are the map's reading of the act**, seven of them, including general-purpose
  models; every control on them is the act's own article.
- **"From when" is answered on the route itself.** Every route row carries the date or dates its
  article applies from, each cited to the point of Article 113 that sets it.
- **Today is a marker, never a verdict.** The orange-and-white control flag marks today and
  nothing else; it never colours text and never says anything is done. The next date on the route
  is a control not reached yet: the course's dashed circle.
- **The flag ends a reading list**, never a compliance check.
- **The gaps show, once.** The obligations inside each article are not broken down yet: said once,
  under the route's heading. The draft explanation keeps its tag.

## Scope

**In scope** · masthead, breadcrumb, the question, the act line, the four answer cards, "Read the
act" and links, the process map with its readout, "Your route, article by article" with *Words to
know*, "When it applies" (next date, time band, every date in Article 113), the "About the act"
drawer, notices footer.

**Non-goals** · the article page ([UXS-006](UXS-006-article-page.md)); the plain-words
explanation's full text.

**Boundary note** · Behaviour beyond what is written here (keyboard order across the whole page)
belongs in an RFC.

## Layout

### Desktop (≥ 1101px)

```text
┌──────────────────────────────────────────────────────────────────────┐
│ Masthead: wordmark (+ tagline) · acts nav · search                   │
├───────────────────────────┬──────────────────────────────────────────┤
│ Map / Acts / AI Act       │ PROCESS MAP — seven slanted stage bands   │
│ WHAT DO YOU DO            │                     ┌ 8 articles ───────┐ │
│ WITH THE AI?              │                     │ ◩ Next 2 Dec 2026 │ │
│ act line                  │                     └───────────────────┘ │
│ ┌ answer ┐ ┌ answer ┐     │ ▵ ─ 1 ─ 2 ─ 3 ─ 4 ─ 5 ─ 6 ─ 7 ─ ⚑         │
│ └────────┘ └────────┘     │                                          │
│ ┌ answer ┐ ┌ answer ┐     │                                          │
│ [Read the act] links      │                                          │
├───────────────────────────┴──────────────────────────────────────────┤
│ YOUR ROUTE, ARTICLE BY ARTICLE                     the gap, said once │
│ ▵ Article 2: Scope ················· ── 2 Feb 2025 applies  Art. 113(a)│ WORDS
│ ① Article 5 ························ ── 2 Feb 2025 applies  …         │ TO
│                                      ╌╌ 2 Dec 2026 not yet  …         │ KNOW
│ …                                                                     │
├───────────────────────────────────────────────────────────────────────┤
│ WHEN IT APPLIES                                   key: ── ╌╌ ◩        │
│ ◩ 2 DEC 2026  in 18 days     next date, what applies, cite            │
│ ━━━━━●━━━━━━━━━━━━━●━━◎╌╌╌╌╌╌╌╌○╌╌╌╌╌╌○╌╌╌   (route pins above)       │
│ 2025          2026  ◩today 2027      2028                             │
│ Every date in Article 113 (grid, solid or dashed top rule)            │
├───────────────────────────────────────────────────────────────────────┤
│ ▸ About the act · CELEX · in force · amended by · 5 beside it  (closed)│
├───────────────────────────────────────────────────────────────────────┤
│ Notices footer                                                       │
└──────────────────────────────────────────────────────────────────────┘
```

| Region | Size | Content |
| --- | --- | --- |
| Question column | 5fr | Breadcrumb, the question (`display`, 700), act line (`lead`), four answer cards in a 2 × 2 grid, "Read the act", About the act, All acts for your role |
| Map column | 7fr, full height, no padding | One drawing, `meet`, stage bands extended past it so the column is always filled; start, all controls and finish always inside |
| Readout | Top-right over the map, the only raised surface | Number of articles on the route; the next date with the dashed control mark, or "all of them apply" |
| Your route | Full width (max 1320px), list + *Words to know* (sticky) | One row per article: number, verbatim title linked to EUR-Lex, dates with line form, state word and Article 113 point |
| When it applies | Full width | The next date as a big numeral with days to go; the time band; every date in Article 113 as a grid |
| About the act | Full width, closed `details` | Summary line with identifiers; inside: explanation (draft tag), at a glance, beside the act |

Sections are separated by 64–96px; the act page uses one type scale (`--t-cite` 14px to
`--t-numeral`, at most 5.5rem).

### Narrow desktop (901–1100px)

The map stays beside the question (operator, 2026-11-14): the masthead stacks, the answer cards
go to one column, the readout tightens. Below the fold, one column; *Words to know* follows the
route list.

### Tablet (641–900px)

One column. The cards come before the map; the stacked map shows; the readout follows the map in
the flow.

### Phone (≤ 640px)

The map is redrawn, not shrunk: the stages as stacked rows top to bottom, the course descending,
labels 15px and numerals 17px, invisible 44px tap targets around each control, the finish flag
inside the drawing. The answer cards stack in one column above the map. Route rows put the dates
under the title. The time band is hidden; the next date and every date in Article 113 stay.

## Component states

| Component | Default | Hover | Selected | Focus | Not yet / gap |
| --- | --- | --- | --- | --- | --- |
| Answer card | White, 1.5px `rule-strong` edge, outline start triangle, founder words (`h3`), the act's word small | `course` edge, soft neutral shadow | 2.5px `course` edge, `course-tint` fill, filled triangle, words in `course-deep`; route redrawn everywhere | 3px `course` outline | "Starts with the high-risk test" for the unsure answer |
| Map control | White circle, 4px `course` ring, `course-deep` numeral clear of both legs | `course-tint` fill | — | 3px outline | — |
| Readout | Articles on the route; dashed control mark + next date | — | — | — | Model route: "All of them apply, the last since 2 Aug 2025" |
| Route row | Number circle, verbatim title, date lines | Title purple, underlined | — | Outline on the link | Dashed line + "not yet"; the gap said once under the heading |
| Time band | Axis solid up to today, dashed after; route pins solid or dashed; next date ringed in the course's purple; today the orange-and-white flag below the axis | — | — | — | — |
| Every date | Solid top rule + "applies" / "in force" | — | — | Outline on cite link | Dashed top rule + "not yet" |
| About the act | Closed, summary line shows identifiers | — | Open: chevron turns | Outline on summary | Draft tag on the explanation |

## Motion

One authored moment: choosing an answer draws the course from start to flag (760ms), the controls
arrive in order (80ms apart), and the readout, next date and pins settle in. Exponential ease-out.
Nothing moves on page load. With `prefers-reduced-motion: reduce` the route switches without any
keyframe animation; only the cards' 160ms colour change remains.

## Accessibility

- The answers are a radio group labelled by the question; arrow keys move between them.
- A polite live region announces the chosen route: "Route: we use an AI system in our work. 6
  articles. Next date on it: 2 Dec 2026, in 18 days." Nothing is announced on load.
- The map is a labelled group; every control is a link named "Article N: title".
- The time band is an image with a title; every date it shows is also in the list below it and on
  the route rows.
- Contrast: ink on every stage tint ≥ 4.5:1; `course` and `ink-2` on white ≥ 8:1; the card edge
  (`rule-strong`) 3.86:1; the today orange 3.58:1 on white, used only as a marker with an ink edge.
- No information by colour alone: dates use line form plus a word; today is a shape (the control
  flag) and a label; the next date is a different shape (the dashed circle) and a label.
- Dark theme: every pair above holds in dark too, including ink, the course line and numerals on
  each of the seven dark stage tints.

## Acceptance criteria

- [ ] Start triangle, every control, the finish flag and every stage label visible for all four
  routes at 1120, 1250, 1280, 1366, 1440 and 1600px.
- [ ] At 901, 960 and 1100px the map stays beside the question, bands filling the column.
- [ ] At 768, 834 and 900px the stacked map shows, with the cards above it and the readout in the
  flow.
- [ ] The course climbs from the start low-left to the finish flag, whose foot is on the course.
- [ ] The today flag appears only for today; the next date uses the dashed control mark.
- [ ] Choosing an answer switches the map, readout, route list, *Words to know*, next date and
  pins together, and announces the route once.
- [ ] `?route=` and a link to an article of another route switch to that route without an
  announcement.
- [ ] Every date on a route row and on the time band cites its Article 113 point.
- [ ] Every article title is verbatim from the consolidated text and links to EUR-Lex.
- [ ] No control numeral sits on a leg, at desktop or phone width; map tap targets ≥ 44px.
- [ ] *Words to know* says the route is drawn by EU Tech Reg, not by the act.
- [ ] The explanation carries its "not yet reviewed" tag until reviewed.
- [ ] No horizontal scroll at 390, 1100 and 1440px.
- [ ] Light and dark both follow the system setting until the reader chooses; `?theme=` and the
  toggle override it, and the choice is remembered.

## Open

- Today is fixed at the build date in the mockup; the site shows the daily rebuild's date (04 §7).
