# UXS-000 — Shared tokens

> **Status** · Draft v0.1 · 2026-11-14
> **IA anchor** · [`§shared-tokens`](IA.md#shared-tokens) · [`§shell-regions`](IA.md#shell-regions)
> **Applies to** · every surface. No per-surface UXS defines its own token.
> **Source** · `docs/mockups/assets/style.css` (as built); recorded in `DESIGN.md` and
> `.impeccable/design.json`. The reasoning: [05 — Design system](../concept/05-design-system.md).

---

## Colour

| Token | Value | Use | Never |
| --- | --- | --- | --- |
| `ground` | `#ffffff` | Page, cards, buttons at rest, route box | — |
| `panel` | `#f7f5fc` | Attribution box, scrollbar track | Large surfaces |
| `ink` | `#1d1a26` | All headings, labels, table heads, body text, code block ground | — |
| `ink-2` | `#4b465a` | Citations, descriptions, state words, "Not yet:", not-yet acts (9.0:1 on white) | Headings |
| `rule` | `#ddd6ea` | Every 1px hairline | Text |
| `course` | `#6a2db0` | The reader's: course, controls, active role, links, primary action, focus, selection (8.0:1 on white) | Headings, labels, the law's content |
| `course-deep` | `#4f1f87` | Wordmark, map numerals, outlined button text, hover | — |
| `course-tint` | `#efe6fa` | Hover fills, search focus halo, agent call ground | Text |
| `contour` | `#a8865a` | Dashed stage boundaries on the map | Text, state |
| `stage-scope` | `#e3ebc3` | Map band: Scope | Text colour, gradients |
| `stage-models` | `#cfe9e0` | Map band: General-purpose models | Text colour, gradients |
| `stage-banned` | `#f7e27c` | Map band: Banned practices | Text colour, gradients |
| `stage-highrisk` | `#f3d6b9` | Map band: Is it high-risk? | Text colour, gradients |
| `stage-requirements` | `#c6e2f3` | Map band: Requirements | Text colour, gradients |
| `stage-conformity` | `#e2d3f5` | Map band: Conformity | Text colour, gradients |
| `stage-market` | `#efe8fa` | Map band: On the market | Text colour, gradients |
| `code-text` / `code-key` / `code-string` | `#ece8f6` / `#c7a8f2` / `#f3e3a4` | The JSON an agent receives, on `ink` | Elsewhere |

## Type

| Token | Face | Size | Use |
| --- | --- | --- | --- |
| `display` | Barlow Condensed 600 | clamp(2.4rem, 4.4vw, 4rem), lh 1.05 | Page title, one per page |
| `headline` | Barlow Condensed 600, uppercase, +0.02em | 1.6rem | Section headings |
| `title` | Barlow Condensed 600 | 1.25rem | Item headings (route rows, results, facts) |
| `wordmark` | Barlow Condensed 700 | 1.9rem | "EU Tech Reg" only |
| `body` | Barlow 400, tabular figures | 17px / 1.6 (16px ≤640px) | Reading text |
| `lede` | Barlow 400 | 1.12rem, 68ch | Opening paragraph |
| `cite` | Barlow 400 | 0.84rem, `ink-2` | The line under every fact |
| `label` | Barlow Condensed 500–600, uppercase, +0.04–0.06em | 0.78–1rem | Buttons, state words, column heads, legends |
| `map-stage` / `map-numeral` | Barlow Condensed 600 / 700 | 22 / 30 units (wide), 15 / 17px (narrow) | Process map |

Fonts are self-hosted woff2 in `fonts/` (Barlow and Barlow Condensed, SIL OFL 1.1).

## Space, shape, depth

- **Gutter**: `clamp(16px, 3vw, 40px)`. Section padding 28px; list rows 14–18px; 56px above the
  footer.
- **Radius**: 8px surfaces · 6px controls · 5px role segments · 3px state tag · 2px focus. Circles
  only for the course (controls, route numbers, timeline dots).
- **Depth**: flat, 1px `rule` hairlines. One shadow, the route box over the map:
  `0 6px 18px rgba(79, 31, 135, 0.14)`. Search focus: `0 0 0 4px course-tint`.
- **Focus**: 3px `course` outline, 3px offset, on every interactive element.

## Breakpoints

| Width | Change |
| --- | --- |
| > 1400px | Tagline beside the wordmark, two lines |
| ≤ 1400px | Tagline under the wordmark |
| 1101–1250px | Acts nav tightens; search field shows its icon only |
| ≤ 1100px | Tagline hidden; acts nav on its own row; the stacked map replaces the wide one and the route box joins the flow; every grid to one column; column rules become row rules; search filters collapse |
| ≤ 640px | Body 16px; the map redrawn as stacked rows; route box in the flow; acts nav one scrolling row with a fade; the role table stacks; the act strip hides |

## Acceptance criteria (every surface)

- [ ] Only the tokens above; no one-off values.
- [ ] Purple only on the reader's marks (05 §4); headings and labels in `ink`.
- [ ] State shown by line form plus a word, never colour alone.
- [ ] A cite line under every fact; unchecked content not shown; gaps labelled.
- [ ] Both notices in the footer.
- [ ] Body text ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA).
- [ ] Every interactive element reachable by keyboard with a visible focus outline.
