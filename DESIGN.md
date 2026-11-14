---
name: EU Tech Reg
description: An open, cited map of EU technology regulation; the law drawn as fixed terrain, the reader's role as a purple course across it.
colors:
  ground: "#ffffff"
  panel: "#f7f5fc"
  ink: "#1d1a26"
  ink-2: "#4b465a"
  rule: "#ddd6ea"
  course: "#6a2db0"
  course-deep: "#4f1f87"
  course-tint: "#efe6fa"
  contour: "#a8865a"
  stage-scope: "#e3ebc3"
  stage-banned: "#f7e27c"
  stage-highrisk: "#f3d6b9"
  stage-requirements: "#c6e2f3"
  stage-conformity: "#e2d3f5"
  stage-market: "#efe8fa"
  code-text: "#ece8f6"
  code-key: "#c7a8f2"
  code-string: "#f3e3a4"
typography:
  display:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "clamp(2.4rem, 4.4vw, 4rem)"
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: "-0.01em"
  headline:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.6rem"
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: "0.02em"
  title:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: "-0.01em"
  wordmark:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.9rem"
    fontWeight: 700
    lineHeight: 1
    letterSpacing: "-0.01em"
  body:
    fontFamily: "Barlow, sans-serif"
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.6
    fontFeature: "tnum"
  lede:
    fontFamily: "Barlow, sans-serif"
    fontSize: "1.12rem"
    fontWeight: 400
    lineHeight: 1.6
  cite:
    fontFamily: "Barlow, sans-serif"
    fontSize: "0.84rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "0.82rem"
    fontWeight: 600
    lineHeight: 1
    letterSpacing: "0.05em"
  code:
    fontFamily: "ui-monospace, JetBrains Mono, monospace"
    fontSize: "13.5px"
    fontWeight: 400
    lineHeight: 1.55
rounded:
  focus: "2px"
  tag: "3px"
  segment: "5px"
  control: "6px"
  surface: "8px"
  round: "50%"
spacing:
  xs: "6px"
  sm: "12px"
  md: "16px"
  lg: "28px"
  xl: "40px"
  section: "56px"
  gutter: "clamp(16px, 3vw, 40px)"
  measure: "68ch"
components:
  button-primary:
    backgroundColor: "{colors.course}"
    textColor: "{colors.ground}"
    typography: "{typography.label}"
    rounded: "{rounded.control}"
    padding: "12px 20px"
  button-primary-hover:
    backgroundColor: "{colors.course-deep}"
    textColor: "{colors.ground}"
  button-secondary:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.course-deep}"
    typography: "{typography.label}"
    rounded: "{rounded.control}"
    padding: "12px 20px"
  button-secondary-hover:
    backgroundColor: "{colors.course-tint}"
    textColor: "{colors.course-deep}"
  role-segment:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.course-deep}"
    rounded: "{rounded.segment}"
    padding: "8px 10px"
  role-segment-active:
    backgroundColor: "{colors.course}"
    textColor: "{colors.ground}"
  search-field:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.control}"
    padding: "8px 12px"
  searchbox:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink}"
    rounded: "{rounded.surface}"
    padding: "12px 16px"
  fact-card:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink}"
    rounded: "{rounded.surface}"
    padding: "14px 16px"
  route-box:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.surface}"
    padding: "12px 16px 14px"
  state-tag:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    typography: "{typography.label}"
    rounded: "{rounded.tag}"
    padding: "4px 6px"
  agent-call:
    backgroundColor: "{colors.course-tint}"
    textColor: "{colors.course-deep}"
    rounded: "{rounded.surface}"
    padding: "14px 18px"
  code-block:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.code-text}"
    typography: "{typography.code}"
    rounded: "{rounded.surface}"
    padding: "18px 20px"
---

# Design System: EU Tech Reg

## Overview

**Creative North Star: "The Course Over Fixed Terrain"**

The law is drawn as orienteering terrain: the same flat, slanted bands of tint for every reader, one band per stage of the act, separated by dashed contour lines. Over it runs one purple course, the reader's route for their role, from a start triangle through numbered controls (each an article with its citation) to a finish flag. Everything that belongs to the reader wears the purple; everything that belongs to the law is ink on white or a flat terrain tint.

The page is a white, dense, calm reading surface. A condensed sans carries display text and labels with an engineered, map-legend voice; a quiet humanist sans carries the reading text with tabular figures so dates and identifiers line up. Depth is almost absent: hairline rules divide regions, one floating box sits over the map, and state is shown by the form of a line (solid or dashed) with a word beside it. Nothing is decorated for its own sake; the citation line under each fact is part of the design, not a footnote to it.

It rejects the legal database's sidebar tree over a wall of text, and the look of an institutional EU portal.

**Key Characteristics:**
- White ground, ink text, hairline violet-grey rules.
- Six flat stage tints in slanted bands with dashed contour boundaries: the terrain.
- One purple, the course: route, controls, active role, links, primary action, wordmark.
- Barlow Condensed for display and labels, Barlow for reading, tabular figures throughout.
- State by line form plus a label: solid means applies or in force, dashed means not yet.
- A citation under every fact; unchecked content visibly labelled; the two notices in every footer.

## Colors

A white sheet with near-black violet ink, a set of pale map tints for the law's stages, and one saturated purple held back for the reader.

### Primary
- **Course Purple** (`course`): the reader's colour. The course line and control rings on the process map, the filled route numbers, the active role segment, links, the primary button fill, outlined button borders, the search field border, focus outlines and text selection.
- **Deep Course** (`course-deep`): the wordmark, control numerals on the map, outlined button text, and the hover state of links and the primary button. Purple at rest becomes deep purple under the pointer.
- **Course Tint** (`course-tint`): the pale wash of purple. Hover fill for outlined buttons and map controls, the searchbox focus halo, and the ground of the agent call on the MCP page.

### Secondary
- **Contour Brown** (`contour`): only the dashed boundaries between stage bands on the map. It is terrain, not state, and never carries text (3.4:1 on white).

### Tertiary
The terrain tints, one per stage of the act, used only as flat fills of the process map bands (wide map: slanted polygons; narrow map: stacked rows):
- **Scope Olive** (`stage-scope`)
- **Banned Yellow** (`stage-banned`)
- **High-risk Light Brown** (`stage-highrisk`)
- **Requirements Light Blue** (`stage-requirements`)
- **Conformity Pale Violet** (`stage-conformity`)
- **Market Mist** (`stage-market`)

Ink text sits directly on every tint (ink on Banned Yellow 13.1:1).

### Neutral
- **Ink** (`ink`): all headings, labels, table headers, body text, and the ground of code blocks.
- **Ink Two** (`ink-2`): secondary text. Citations, descriptions, state words, the "Not yet:" label, not-yet nav items, unread table rows (9.0:1 on white).
- **Hairline** (`rule`): every 1px divider: masthead underline, column separators, list and table row rules, card borders.
- **Ground** (`ground`): the page, cards, buttons at rest, the route box, unfilled map controls and start triangles.
- **Panel** (`panel`): defined, used only as the scrollbar track today.
- **Code Text / Key / String** (`code-text`, `code-key`, `code-string`): the JSON block an agent receives, on an ink ground.

### Named Rules
**The Reader's Purple Rule.** Purple belongs to the reader: the course, its controls, the active role, links, the primary action, focus and selection, and the wordmark. Headings, labels, table headers and the law's own content are ink. Before painting anything purple, ask whose it is; if it is the law's, it is ink or a terrain tint.

The build carries three purple marks outside that list: the 2px rule under the status line, the 2px rule above the footer notices, and the "Your route" label in the route box. They are recorded as divergence, not precedent; new surfaces follow the rule.

**The Flat Terrain Rule.** Stage tints are flat fills with dashed contour boundaries. No gradients, no shadows, no text colour drawn from a tint.

## Typography

**Display Font:** Barlow Condensed 500 / 600 / 700, self-hosted woff2 (with Barlow, sans-serif)
**Body Font:** Barlow 400 / 400 italic / 500 / 600, self-hosted woff2 (with sans-serif)
**Label/Mono Font:** labels use Barlow Condensed; code uses the platform monospace (`ui-monospace`)

**Character:** A condensed, slightly technical grotesque that reads like a map legend, paired with its own wider sibling for long, calm reading. Both from one family (Jeremy Tribby, SIL OFL 1.1), so the voice never splits.

### Hierarchy
- **Display** (600, clamp 2.4rem to 4rem, line-height 1.05, balanced wrap): the page title only, one per page.
- **Headline** (600, 1.6rem, uppercase, letter-spacing 0.02em): section headings ("Your route: articles to read", "When each part applies", "At a glance").
- **Title** (600, 1.25rem): item headings in route lists and search results; link titles are ink and turn purple on hover.
- **Wordmark** (700, 1.9rem, deep purple): "EU Tech Reg" in the masthead only.
- **Body** (400, 17px, line-height 1.6, tabular figures; 16px at 640px and below): reading text. The opening paragraph steps up to 1.12rem and is held to a 68ch measure; result lists to 78ch.
- **Cite** (400, 0.84rem, ink two): the citation line under each fact; its links are ink two and turn purple on hover.
- **Label** (Barlow Condensed 500 to 600, 0.78 to 1rem, uppercase, letter-spacing 0.04 to 0.06em): buttons, state words on the timeline, table column heads, facet legends, the "Not yet:" nav label, kind labels after related links, the state tag.
- **Identifier** (Barlow Condensed 500, letter-spacing 0.02em): CELEX numbers and anchors set inline.

### Named Rules
**The Tabular Figures Rule.** `font-variant-numeric: tabular-nums` is set on the body; dates, article numbers and CELEX identifiers align in every table and timeline.

**The Two Faces Rule.** Condensed for what you scan (titles, headings, labels, numbers on the map), regular Barlow for what you read. Never set a paragraph in the condensed face.

## Layout

A full-width masthead (wordmark and tagline, the six first acts, search) sticks to the top on a 1px hairline. The act page's first viewport is a two-column grid, 5fr text to 7fr map, at least min(640px, viewport minus 70px) tall; the map column bleeds to its edges with no padding. Below the fold sits a three-column band (1.1fr / 1fr / 0.9fr) separated by hairline column rules rather than gaps: route, dates, at a glance. Reading pages centre in a 1240px column; search uses a 260px facet rail beside the results with a 40px gap; the MCP page sets its two views side by side in equal columns with a 32px gap.

Horizontal padding everywhere is the fluid gutter (16px to 40px). Vertical rhythm runs in 28px section padding, 14 to 18px list-row padding, 56px above the footer.

Responsive behaviour, as built:
- 1600px and below: nav gap tightens, search field narrows.
- 1400px and below: the tagline wraps under the wordmark.
- 1101px to 1250px: nav type steps down and the search field drops its label to the icon.
- 1100px and below: the tagline hides, the acts nav moves to its own row, every multi-column grid collapses to one column, column rules become row rules, the search filters become a disclosure.
- 640px and below: body 16px; the wide slanted map is replaced by a narrow map of stacked stage rows; the route box drops into the flow; the acts nav scrolls sideways with snap points and a fade mask; the act table turns into labelled stacks; the dates strip hides.

## Elevation & Depth

Flat. Regions are separated by 1px hairlines, not by shadow or layered surfaces. There is exactly one lifted object: the route box, which floats over the map and carries a soft purple-tinted shadow so it reads as an overlay on terrain rather than part of it. Focus on the searchbox is shown with a 4px course-tint halo.

### Shadow Vocabulary
- **Route box float** (`box-shadow: 0 6px 18px rgba(79, 31, 135, 0.14)`): only for a control panel laid over the process map.
- **Searchbox focus halo** (`box-shadow: 0 0 0 4px var(--course-tint)`): focus-within on the large search input.

### Named Rules
**The Only Float Rule.** Shadow means "this sits on top of the map". A card on the white page gets a hairline border, never a shadow.

## Shapes

Gently rounded rectangles at small radii, chosen by role: 8px for surfaces (cards, route box, searchbox, code, agent call), 6px for controls (buttons, masthead search field), 5px for role segments, 3px for the state tag, 2px for focus outlines. Circles are reserved for the course: map controls, filled route numbers, timeline dots.

The map vocabulary is fixed: a start triangle, a control circle with a number, a finish flag, joined by straight round-capped legs. The start triangle also marks Article 2 at the head of the route list.

Line form carries state:
- Solid 3px purple spine with a filled dot: applies or in force.
- Dashed 2px purple spine with a dashed-outline white dot: not yet.
- Dashed underline under ink-two text: an act not yet on the map.
- Dashed 1px ink-two border: content not yet reviewed (the state tag).
- Dashed brown line: a stage boundary on the terrain (map only).

### Named Rules
**The Line Form Rule.** State is carried by the form of a line plus a word, never by colour alone. Solid is applies or in force; dashed is not yet. Every dashed state mark sits next to its label ("not yet", "Not yet:", "not yet reviewed").

## Components

### Buttons
Uppercase condensed labels in a tight, confident box.
- **Shape:** gently rounded (6px), 1.5px purple border.
- **Primary:** course purple fill, white text, 600 condensed uppercase at 1.05rem, letter-spacing 0.06em, 12px by 20px padding, optional 20px line icon left of the label. One per action row.
- **Secondary:** white fill, deep purple text, same border and type.
- **Hover / Focus:** background eases over 200ms (primary to deep purple, secondary to course tint). Focus is a 3px purple outline offset 3px.

### Role Segments
- **Style:** equal-width segments in a row with a 6px gap, 1.5px purple border, 5px radius, deep purple condensed 600 text.
- **State:** the checked role fills with course purple and white text; the radio input is visually hidden and its focus draws a 3px purple outline on the label. Switching role swaps the course on the map, the route list and the role table without reloading.

### Cards / Containers
- **Corner Style:** 8px.
- **Background:** white.
- **Shadow Strategy:** none, except the route box (see Elevation).
- **Border:** 1px hairline. Route lists are one bordered container with hairline rows, not separate cards.
- **Internal Padding:** 14px by 16px.
- **Fact card (MCP page):** a hairline card with a provenance grid under the fact: condensed ink terms on the left, ink-two values on the right, long URLs allowed to break anywhere.

### Inputs / Fields
- **Masthead search field:** a link styled as a field, 1.5px purple border, 6px radius, 18px magnifier icon and ink-two placeholder text; the text drops below 1250px wide and on phones.
- **Searchbox:** 2px purple border, 8px radius, 1.2rem Barlow input with no inner outline; focus-within adds the 4px course-tint halo.
- **Facets:** borderless fieldsets with uppercase condensed legends and 16px checkboxes tinted with `accent-color` purple.

### Navigation
- **Acts nav:** condensed 500 at 1.02rem, ink. The current act is purple with a 3px purple underline bar. Acts not on the map yet follow an uppercase "Not yet:" label in ink two and carry a dashed ink-two underline.
- **Breadcrumb:** condensed 600 uppercase, letter-spacing 0.06em, purple, linking back to the map.
- **Mobile:** the acts row scrolls sideways with snap points and a right-edge fade mask.

### Process Map (signature)
The act's stages as slanted flat bands (wide) or stacked rows (narrow), each in its stage tint, divided by dashed contour lines, stage names in condensed ink. The course is drawn per role: a 4px purple round-capped leg line from a white start triangle through numbered controls (white circle, 4px purple ring, deep-purple condensed numeral) to a filled purple finish flag. Controls are links to the article in the route list and fill with course tint on hover or focus. The route box floats top right over the map. A role change replays the course with a 520ms settle (8px rise, `cubic-bezier(0.16, 1, 0.3, 1)`), only when reduced motion is not requested.

### Dates Timeline
Three columns per row: a 22px dot, the date in condensed 600 with its state word below in uppercase ink two, and the text with its citation. A 3px solid purple spine joins rows in force; rows not yet applying switch to a 2px dashed spine and a white dot with a dashed purple ring. At 640px and below the text moves under the date.

### Citation and State Marks
- **Cite line:** small ink-two text under every fact naming the article and the act that set it, with links.
- **State tag:** an uppercase condensed label in a dashed ink-two box, e.g. "Explanation draft · not yet reviewed", set next to content nobody has checked.
- **Plain gap line:** "Obligations not yet broken down" as a cite line where the breakdown does not exist yet.

### Notices Footer
Every page ends with two ink-two notices (currently under a 2px purple rule, see The Reader's Purple Rule) with their lead words in ink 600: "Information, not legal advice." and "Independent project, not affiliated with the European Union." Records licence sits with the second.

### Agent Answer (MCP page)
The tool call is set in condensed 500 deep purple on a course-tint panel; the JSON response sits in an ink code block (code text, lavender keys, pale yellow strings); a hairline box on the panel ground carries the copyable attribution line.

## Do's and Don'ts

### Do:
- **Do** keep purple for the reader: course, controls, active role, links, primary action, focus, selection, wordmark. Headings, labels and table heads are ink.
- **Do** show state with line form plus a word: solid for applies or in force, dashed for not yet.
- **Do** put a cite line under every fact, and label unchecked content with the dashed state tag or a plain "not yet" line.
- **Do** end every page with both notices: information, not legal advice; independent, not affiliated with the European Union.
- **Do** draw the law's stages as flat terrain tints with dashed contour boundaries, and the role as a purple course of start triangle, numbered controls and finish flag.
- **Do** set dates and identifiers in tabular figures, and display text and labels in Barlow Condensed.
- **Do** divide regions with 1px hairlines; reserve shadow for something floating over the map.

### Don't:
- **Don't** colour headings, section labels or the law's content purple.
- **Don't** signal state by colour alone; a dashed line without its word is not enough.
- **Don't** show a fact without its citation, or show unchecked content without its label.
- **Don't** shade, gradient or texture the terrain tints, or use them as text colours.
- **Don't** set paragraphs in the condensed face.
- **Don't** fall back to a sidebar tree over a wall of legal text.
