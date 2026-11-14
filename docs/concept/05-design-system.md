# 05 — Design system

> **Status** · Draft v0.1 · 2026-11-14 — written from the built mockup
> ([`docs/mockups/`](../mockups/index.html)) and the token record `DESIGN.md` at the repo root.
> The look was chosen with the operator through Impeccable's direction round on 2026-11-14.

*What EU Tech Reg looks like and why: the world it is drawn in, the grammar every surface uses,
and the rules that keep it honest. The values live in `DESIGN.md` and
[UXS-000](../uxs/UXS-000-shared-tokens.md); this document is the reasoning.*

---

## 1. The North Star: the course over fixed terrain

The law is drawn as orienteering terrain: the same flat, slanted bands for every reader, one band
per stage of an act, separated by dashed contour lines. Over it runs one purple course — the
reader's route for their role — from a start triangle through numbered controls, each an article
with its citation, to a finish flag.

That one picture carries the product's position (vision, [01](01-vision.md)):

- **The terrain is the law, and it is the same for everyone.** We draw it; we do not move it.
- **The course is the reader's.** They choose their role; the route is drawn for it. Choosing a
  route is the reader's act — the map never says which role they hold.
- **Every control is an article you can open.** The picture is a way into the text, not a summary
  standing in for it.

The direction refuses two things the operator ruled out: the legal database (a sidebar tree over a
wall of text) and the institutional EU portal. It also refuses the law firm (navy gravitas) and the
SaaS landing page (gradients and claims).

## 2. How it was chosen

| Step | What happened |
| --- | --- |
| Product truth | `PRODUCT.md`: founders first; information, not advice; independent, not the EU; WCAG 2.2 AA |
| Candidate worlds | Seven from the founders' own world (wayfinding signage, datasheets, timetables, assembly instructions, a transit map, field guides, travel documents) |
| The roll | Impeccable assigned the field guide and dealt six challengers; four directions were rendered as comps |
| The operator's choice | The orienteering map — with the terrain steered from geography to an abstract process map, the rest of the comp kept |
| Build and review | Built code-first in static HTML/CSS; an independent reviewer shipped it after three fix rounds |

The approved comp and the unchosen ones are kept locally in `.impeccable/mocks/decision/`
(Impeccable's runtime state, not committed). The direction contract is in
`.impeccable/surfaces/docs-mockups-index-html.md`.

## 3. The grammar

Every surface is built from the same few marks. A new surface that needs a mark not on this list
needs a decision first.

| Mark | Means | Where |
| --- | --- | --- |
| Flat stage tint in a slanted band (wide) or row (narrow) | A stage of the act — the law's own structure, drawn by us | The process map |
| Dashed brown boundary | Where one stage ends and the next begins | The process map only |
| Start triangle | Where a route begins (Article 2 — scope) | Map; head of the route list |
| Numbered control circle | An article to read, linking to it | Map; route list numbers |
| Finish flag | The end of the route | Map |
| Straight purple leg | The order of the route | Map |
| Solid line or dot | Applies, in force | Dates timeline |
| Dashed line or ring, with the word | Not yet | Dates timeline; "Not yet:" acts in the nav |
| Dashed box around a label | Not yet reviewed | The explanation draft tag |
| Cite line | Where it says so, and who set it | Under every fact |

## 4. Colour: the reader's purple

One saturated colour, held back for the reader. Purple marks the course, its controls, the active
role, links, the primary action, focus and selection, and the wordmark. Everything that belongs to
the law — headings, labels, table heads, the text itself — is ink on white, or a flat stage tint on
the map. **Before painting anything purple, ask whose it is.**

The six stage tints are map inks: pale, flat, never shaded, never used for text. Ink sits directly
on every one of them at AA contrast or better (13.1:1 on the yellow).

Three purple marks in the mockup sit outside the rule — the 2px rules under the status line and
above the footer, and the "Your route" label. `DESIGN.md` records them as divergence; new surfaces
do not copy them.

## 5. Type: two faces, one family

Barlow Condensed for what you scan — the page title, section headings, labels, map numerals.
Barlow for what you read — paragraphs, citations, tables. One family (SIL OFL), self-hosted, so the
voice never splits. Tabular figures throughout: dates, article numbers and CELEX identifiers line up
in every column. Paragraphs are never set in the condensed face; reading text holds a 68 to 78
character measure.

## 6. State: line form plus a word

State is never carried by colour alone (WCAG, and the product's "show the gaps" principle):

- **Solid** — applies, in force.
- **Dashed** — not yet. Always next to its word: "not yet", "Not yet:", "not yet reviewed".

The same two forms carry every state on every surface, so a reader learns them once.

## 7. Honesty is part of the look

The design system holds three product rules as visual rules, so no surface can drop them:

1. **A cite line under every fact** — the article, and the act that set it, linked.
2. **Gaps are visible** — "Obligations not yet broken down", "Explanation draft · not yet
   reviewed", acts marked "Not yet:" in the nav. Nothing unchecked is shown as fact.
3. **Both notices in every footer** — information, not legal advice; independent project, not
   affiliated with the European Union.

## 8. Layout and depth

Flat. Regions are divided by 1px hairlines; the one shadow belongs to the route box, because it is
the one thing that sits on top of the map. A full-width masthead, a first viewport split 5 to 7
between text and map, then a three-column band (route, dates, at a glance). At 1100px and below
everything stacks; at 640px and below the map is redrawn as stacked rows rather than shrunk. The
breakpoints and values are in [UXS-000](../uxs/UXS-000-shared-tokens.md).

## 9. Principles to protect

When a future surface or the real build is tempted to bend these, it needs a decision first:

1. **The terrain is the law; the course is the reader.** Never draw the reader's judgement into the
   terrain, and never let the course say which role someone holds.
2. **Purple is the reader's.** Not a brand colour to spread.
3. **A fact without its cite line is not shown.**
4. **State by line form plus a word.**
5. **Redraw for small screens; never shrink a picture into unreadability.**
6. **No sidebar tree over a wall of legal text.**

## 10. Where the rest lives

- **Values** (colours, type scale, radii, spacing): `DESIGN.md` and `.impeccable/design.json`;
  as the shared contract every surface uses: [UXS-000](../uxs/UXS-000-shared-tokens.md).
- **Surfaces**: [the UXS index](../uxs/index.md) and the [information architecture](../uxs/IA.md).
- **How a reader uses it**: [the user guide](../guide/index.md).
- **The mockup itself**: [`docs/mockups/`](../mockups/index.html).
