---
name: EU Tech Reg
description: An open, cited map of EU technology regulation; the law drawn as fixed terrain, the reader's role as a purple course across it.
colors:
  ground: "#ffffff"
  panel: "#f7f5fc"
  ink: "#1d1a26"
  ink-2: "#4b465a"
  rule: "#ddd6ea"
  rule-strong: "#857e98"
  course: "#6a2db0"
  course-deep: "#4f1f87"
  course-tint: "#efe6fa"
  on-course: "#ffffff"
  contour: "#a8865a"
  today: "#e8590c"
  stage-scope: "#e3ebc3"
  stage-models: "#cfe9e0"
  stage-banned: "#f7e27c"
  stage-highrisk: "#f3d6b9"
  stage-requirements: "#c6e2f3"
  stage-conformity: "#e2d3f5"
  stage-market: "#efe8fa"
  code-bg: "#1d1a26"
  code-text: "#ece8f6"
  code-key: "#c7a8f2"
  code-string: "#f3e3a4"
  ground-dark: "#15121c"
  panel-dark: "#1e1a27"
  ink-dark: "#ece8f4"
  ink-2-dark: "#b7b0c8"
  rule-dark: "#363044"
  rule-strong-dark: "#7a7290"
  course-dark: "#b38cf2"
  course-deep-dark: "#d6c2fa"
  course-tint-dark: "#2c2240"
  on-course-dark: "#15121c"
  contour-dark: "#8f7a5c"
  today-dark: "#f0772a"
  stage-scope-dark: "#2f3a1f"
  stage-models-dark: "#163b33"
  stage-banned-dark: "#4a4012"
  stage-highrisk-dark: "#4a2e1c"
  stage-requirements-dark: "#173a52"
  stage-conformity-dark: "#362a5a"
  stage-market-dark: "#302a40"
  code-bg-dark: "#0e0c13"
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
  act-display:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "clamp(2.75rem, 5.4vw, 5rem)"
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: "-0.02em"
  act-headline:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "clamp(2rem, 3.2vw, 2.75rem)"
    fontWeight: 700
    lineHeight: 1.05
    letterSpacing: "-0.015em"
  act-title:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.375rem"
    fontWeight: 600
    lineHeight: 1.15
    letterSpacing: "-0.01em"
  numeral:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "clamp(3.25rem, 7vw, 5.5rem)"
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: "-0.02em"
  date:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.5rem"
    fontWeight: 700
    lineHeight: 1.1
  wordmark:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.9rem"
    fontWeight: 700
    lineHeight: 1
    letterSpacing: "-0.01em"
  button:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "1.05rem"
    fontWeight: 600
    lineHeight: 1
    letterSpacing: "0.04em"
  body:
    fontFamily: "Barlow, sans-serif"
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.6
    fontFeature: "tnum"
  act-lead:
    fontFamily: "Barlow, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 400
    lineHeight: 1.45
  lede:
    fontFamily: "Barlow, sans-serif"
    fontSize: "1.12rem"
    fontWeight: 400
    lineHeight: 1.6
  small:
    fontFamily: "Barlow, sans-serif"
    fontSize: "0.9375rem"
    fontWeight: 400
    lineHeight: 1.5
  cite:
    fontFamily: "Barlow, sans-serif"
    fontSize: "0.875rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "Barlow Condensed, Barlow, sans-serif"
    fontSize: "0.82rem"
    fontWeight: 600
    lineHeight: 1
    letterSpacing: "0.05em"
  code:
    fontFamily: "ui-monospace, monospace"
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
  act-section: "clamp(64px, 8vw, 96px)"
  gutter: "clamp(16px, 3vw, 40px)"
  measure: "68ch"
components:
  button-primary:
    backgroundColor: "{colors.course}"
    textColor: "{colors.on-course}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    padding: "12px 20px"
  button-primary-hover:
    backgroundColor: "{colors.course-deep}"
    textColor: "{colors.on-course}"
  button-secondary:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.course-deep}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    padding: "12px 20px"
  button-secondary-hover:
    backgroundColor: "{colors.course-tint}"
    textColor: "{colors.course-deep}"
  answer-card:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink}"
    typography: "{typography.act-title}"
    rounded: "{rounded.surface}"
    padding: "18px 18px 16px"
  answer-card-checked:
    backgroundColor: "{colors.course-tint}"
    textColor: "{colors.course-deep}"
  map-readout:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.surface}"
    padding: "14px 18px"
  theme-toggle:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.round}"
    size: "44px"
  role-segment:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.course-deep}"
    rounded: "{rounded.segment}"
    padding: "8px 10px"
  role-segment-active:
    backgroundColor: "{colors.course}"
    textColor: "{colors.on-course}"
  search-field:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.control}"
    padding: "8px 12px"
  search-field-compact:
    backgroundColor: "{colors.ground}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.round}"
    size: "44px"
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
  attribution-box:
    backgroundColor: "{colors.panel}"
    textColor: "{colors.ink}"
    rounded: "{rounded.surface}"
    padding: "12px 16px"
  code-block:
    backgroundColor: "{colors.code-bg}"
    textColor: "{colors.code-text}"
    typography: "{typography.code}"
    rounded: "{rounded.surface}"
    padding: "18px 20px"
---

# Design System: EU Tech Reg

## Overview

**Creative North Star: "The Course Over Fixed Terrain"**

The law is drawn as orienteering terrain: the same flat, slanted bands of tint for every reader, one band per stage of the act, separated by dashed contour lines. Over it runs one purple course, the reader's route for their answer, climbing the full height of the map from a start triangle at the bottom left through numbered controls (each an article with its citation) to a finish flag whose pole stands on the course at the top right. Everything that belongs to the reader wears the purple; everything that belongs to the law is ink on the ground or a flat terrain tint. One other colour exists: the orange and white flag that marks today on the time band.

The page is a dense, calm reading surface, white by default and a deep violet-black in the dark theme, which follows the system setting unless the reader picks one. A condensed sans carries display text and labels with an engineered, map-legend voice; a quiet humanist sans carries the reading text with tabular figures so dates and identifiers line up. Depth is almost absent: hairline rules divide regions, one readout floats over the map, and state is shown by the form of a line (solid or dashed) with a word beside it. Nothing is decorated for its own sake; the citation line under each fact is part of the design, not a footnote to it.

It rejects the legal database's sidebar tree over a wall of text, and the look of an institutional EU portal.

**Key Characteristics:**
- White ground, ink text, hairline violet-grey rules; a full dark theme from the same token names.
- Seven flat stage tints in slanted bands with dashed contour boundaries: the terrain.
- One purple, the course: route, controls, the chosen answer, links, primary action, wordmark.
- One orange, the today flag; a marker, never text.
- Barlow Condensed for display and labels, Barlow for reading, tabular figures throughout.
- State by line form plus a word: solid means applies or in force, dashed means not yet.
- A citation under every fact; unchecked content visibly labelled; the two notices in every footer.

## Colors

A white sheet with near-black violet ink, a set of pale map tints for the law's stages, one saturated purple held back for the reader, and one orange for today. The dark theme keeps every role and swaps every value.

### Primary
- **Course Purple** (`course`): the reader's colour. The course line, start triangle and control rings on the process map, the finish flag, the filled route numbers, the checked answer card's border and triangle, the map readout's border, the route pins and next-date marks on the time band, the line forms beside dates, the active role segment, links (including the breadcrumb's one link), the primary button fill, outlined button borders, the search field and searchbox borders, disclosure chevrons, focus outlines, text selection and the scrollbar thumb.
- **Deep Course** (`course-deep`): the wordmark, control numerals on the map, outlined button text, the checked answer's words, the article labels on band pins, the "in 18 days" countdown, and the hover state of links and the primary button. In light, purple at rest deepens under the pointer; in dark, `course-deep` is the lighter, higher-contrast step (11.4:1 on the dark ground).
- **Course Tint** (`course-tint`): the pale wash of purple (a deep violet in dark). The checked answer card's ground, hover fill for outlined buttons and map controls, the searchbox focus halo, and the ground of the agent call on the MCP page.
- **On Course** (`on-course`): text and numerals set on a purple fill: route numbers, the primary button, the active role segment, selected text. White in light; the dark ground in dark, because the dark course is a light lavender (7.0:1 either way).

### Secondary
- **Contour Brown** (`contour`): only the dashed boundaries between stage bands, on the act map and on the role page's strip. It is terrain, not state, and never carries text (3.4:1 on white, 4.5:1 on the dark ground).
- **Today Orange** (`today`): only the today flag, a square split on the diagonal into a white half and an orange half and outlined in ink, on the time band and in its legend. A marker, never text and never a fill anywhere else (3.6:1 on white, 6.5:1 on the dark ground). The white half is literal white in both themes.

### Tertiary
The terrain tints, one per stage of the act, used only as flat fills of the process map bands (wide map: slanted polygons; narrow map: stacked rows):
- **Scope Olive** (`stage-scope`)
- **Models Mint** (`stage-models`)
- **Banned Yellow** (`stage-banned`)
- **High-risk Light Brown** (`stage-highrisk`)
- **Requirements Light Blue** (`stage-requirements`)
- **Conformity Pale Violet** (`stage-conformity`)
- **Market Mist** (`stage-market`)

Ink text and the purple course sit directly on every tint. Light: ink 12.1 to 14.3:1, course 5.7 to 6.7:1. Dark: the seven tints become deep, muted versions of the same hues (the `-dark` keys); ink on them 8.6 to 11.4:1, the course 3.9 (Banned) to 5.2:1.

### Neutral
- **Ink** (`ink`): headings, labels, table headers, body text, the time band's axis, year ticks and today line, the outline of the today flag, the solid or dashed top rules of the Every-date grid, the 3px rule over Words to know and the 2px rule over the footer notices.
- **Ink Two** (`ink-2`): secondary text. Citations, descriptions, state words, the breadcrumb's plain text, the "Not yet:" label, not-yet nav items, unread table rows, the readout's words, the theme toggle's icon, the act-date ticks on the band (9.0:1 on white, 8.9:1 on the dark ground).
- **Hairline** (`rule`): every 1px divider: masthead underline, row rules in route lists, tables, results and the drawer, card borders, the code block's border. It divides; it is not a control edge (1.4:1).
- **Strong Rule** (`rule-strong`): the edge of a control the reader has to find on its own: answer cards at rest and the theme toggle (3.9:1 on white, 4.1:1 on the dark ground).
- **Ground** (`ground`): the page, the masthead, cards, buttons at rest, the readout, unfilled map controls, start triangles and not-yet pins.
- **Panel** (`panel`): the attribution box on the MCP page and the scrollbar track.
- **Code** (`code-bg`, `code-text`, `code-key`, `code-string`): the JSON block an agent receives. The ground is ink in light and a near-black in dark; the three text colours stay the same in both (16.1, 9.5 and 15.1:1 on the dark code ground).

### Named Rules
**The Reader's Purple Rule.** Purple belongs to the reader: the course and its marks, the chosen answer, the route's dates, links, the primary action, focus and selection, and the wordmark. Headings, labels, table headers, the breadcrumb's plain text, the rules over Words to know and the footer, and the law's own content are ink or ink two. Before painting anything purple, ask whose it is; if it is the law's, it is ink or a terrain tint.

The same split holds for time: the route's dates (line forms on route rows, pins and next-date marks) are purple; the law's own dates (the band's axis and ticks, the Every-date grid's top rules) are ink.

**The Today Flag Rule.** Orange is today and nothing else. It never colours text, a fill, a link or an emphasis, and the next date on the reader's route is never drawn in it.

**The Flat Terrain Rule.** Stage tints are flat fills with dashed contour boundaries. No gradients, no shadows, no text colour drawn from a tint.

**The Same Names Rule.** The dark theme is the same token set with other values. Components name tokens, never hex, so a component written once works in both themes.

## Typography

**Display Font:** Barlow Condensed 500 / 600 / 700, self-hosted woff2 (with Barlow, sans-serif)
**Body Font:** Barlow 400 / 400 italic / 500 / 600, self-hosted woff2 (with sans-serif)
**Label/Mono Font:** labels use Barlow Condensed; code uses the platform monospace (`ui-monospace`)

**Character:** A condensed, slightly technical grotesque that reads like a map legend, paired with its own wider sibling for long, calm reading. Both from one family (Jeremy Tribby, SIL OFL 1.1), so the voice never splits.

### Hierarchy
Reading pages (home, role, search, MCP answer) use the base scale:
- **Display** (600, clamp 2.4rem to 4rem, line-height 1.05, balanced wrap): the page title only, one per page.
- **Headline** (600, 1.6rem, uppercase, letter-spacing 0.02em): section headings on reading pages ("As the agent can show it").
- **Title** (600, 1.25rem): item headings in results and fact cards; link titles are ink and turn purple on hover.
- **Lede** (400, 1.12rem, 68ch measure): the opening paragraph.

A second scale of steps lives on `:root` (`--t-cite` to `--t-numeral`, and `--section`). Cite and small text use it on every page; the act page takes all its sizes from it:
- **Act Display** (700, clamp 2.75rem to 5rem, line-height 0.95, letter-spacing -0.02em, at most 14ch): the question that opens the page.
- **Act Headline** (700, clamp 2rem to 2.75rem, sentence case, letter-spacing -0.015em): section headings ("Your route, article by article", "When it applies", "About the act").
- **Act Title** (600, 1.375rem): the answer cards' words, route article titles, Words to know.
- **Numeral** (700, clamp 3.25rem to 5.5rem, line-height 0.95): the next date in the time band's callout, one per page.
- **Date** (700, 1.5rem, ink): dates on route rows; 1.375rem in the Every-date grid. The readout's article count uses the same 700 at 1.5rem.
- **Lead** (400, 1.25rem, line-height 1.45, ink two, 44ch): the sentence under the question; it drops to body size on phones.
- **Small** (0.9375rem) for descriptions and lists.

Across every page:
- **Wordmark** (700, 1.9rem, deep purple): "EU Tech Reg" in the masthead only.
- **Body** (400, 17px, line-height 1.6, tabular figures; 16px at 640px and below): reading text. Result lists hold to 78ch.
- **Cite** (400, 0.875rem, ink two, on every page): the citation line under each fact, state words and kind labels; its links are ink two and turn purple on hover.
- **Button** (Barlow Condensed 600, 1.05rem, letter-spacing 0.04em, sentence case): buttons.
- **Label** (Barlow Condensed 600, 0.78 to 1.05rem, uppercase, letter-spacing 0.05 to 0.06em): table column heads, facet legends, the Filters disclosure, the "Not yet:" nav label, the state tag, stacked table labels on phones.
- **Breadcrumb** (Barlow Condensed 600, 1rem, letter-spacing 0.01em, sentence case, ink two; its link purple, no underline).
- **Identifier** (Barlow Condensed 500, letter-spacing 0.02em): CELEX numbers and anchors set inline.

### Named Rules
**The Tabular Figures Rule.** `font-variant-numeric: tabular-nums` is set on the body; dates, article numbers and CELEX identifiers align in every table, row and band.

**The Two Faces Rule.** Condensed for what you scan (titles, headings, labels, dates, numbers on the map), regular Barlow for what you read. Never set a paragraph in the condensed face.

## Layout

A full-width masthead (wordmark and tagline, the six first acts, search, the theme toggle) sticks to the top on a 1px hairline, 14px of vertical padding, 24px between its parts. Horizontal padding everywhere is the fluid gutter (16px to 40px).

The act page's first viewport is a two-column grid, 5fr question to 7fr map, at least min(720px, viewport minus 70px) tall, with a hairline under it. The question column has 36px of top padding; the map column bleeds to its edges with no padding and the map scales to fill it. Below the fold the act page is a sequence, not a sheet: three sections in a 1320px column, each opened by `act-section` spacing (64px to 96px) and a heading row (heading with its short note beside it, 32px under). Your route sets the route list beside a sticky Words to know column (1fr to 260–340px, 48px gap); When it applies stacks the legend, the callout, the time band and the Every-date grid (auto-filled columns of at least 280px, 32px apart); About the act is a closed drawer. The footer sits one `act-section` below.

Reading pages centre in a 1240px column with 32px of top padding; search uses a 260px facet rail beside the results with a 40px gap; the MCP page sets its two views side by side in equal columns with a 32px gap; 56px sits above the footer.

Responsive behaviour, as built:
- 1600px and below: the acts nav gap tightens to 14px; the search field collapses to a 44px round icon beside the theme toggle.
- 1400px and below: the tagline wraps under the wordmark (0.76rem, indented to the wordmark, its side rule gone).
- 1101px to 1250px: the acts nav steps down to 0.94rem with a 10px gap.
- 1100px and below: the masthead stacks (wordmark, search and toggle on one row, the acts nav on its own row below), the tagline hides; the answer cards go to one column; the route grid, the callout and the drawer body go single column and Words to know stops sticking; search and MCP views go single column, and the search filters become a disclosure (closed on load); the readout tightens (16px from the corner); stage names on the wide map grow to 24px.
- 900px and below: the first viewport stacks; the map is redrawn as stacked stage rows (at most 560px wide, centred) below the cards, and the readout drops into the flow under it without its shadow. From 901px up the map stays beside the question.
- 640px and below: body 16px; card padding tightens; route rows put their dates under the title; the time band hides (the callout and the Every-date grid carry the dates); the acts nav scrolls sideways with snap points and a fade mask; the role strip hides and the acts table turns into labelled stacks.

## Elevation & Depth

Flat. Regions are separated by 1px hairlines, not by shadow or layered surfaces. Two things lift: the map readout, which floats over the terrain, and an answer card under the pointer. Both use one neutral shadow colour (`--shadow`: ink at 14% in light, black at 45% in dark), never a purple glow. Focus on the searchbox is shown with a 4px course-tint halo.

### Shadow Vocabulary
- **Readout float** (`box-shadow: 0 8px 22px var(--shadow)`): the readout over the map. It goes when the readout drops into the flow at 900px and below.
- **Card hover lift** (`box-shadow: 0 4px 14px var(--shadow)`): an answer card under the pointer, with its border turning purple.
- **Searchbox focus halo** (`box-shadow: 0 0 0 4px var(--course-tint)`): focus-within on the large search input.

### Named Rules
**The Lift Rule.** Shadow means lifted: over the map, or under the pointer. A card at rest on the page gets a border, never a shadow, and no shadow is tinted.

## Shapes

Gently rounded rectangles at small radii, chosen by role: 8px for surfaces (answer cards, the readout, fact cards, the searchbox, code, the agent call, the attribution box), 6px for controls (buttons, the full masthead search field), 5px for role segments, 3px for the state tag, 2px for focus outlines. Circles are reserved for the course and the masthead's two icon buttons: map controls, filled route numbers, band pins and next-date marks, the theme toggle and the compact search field (44px each).

The map vocabulary is fixed: a start triangle, a control circle with a number, a finish flag (a pole standing on the end of the course with a rectangular flag), joined by straight round-capped, round-joined legs. The route list uses the same start triangle for Article 2 at its head and the same flag on a pole for its last row and serves as the indicator in each answer card (outlined, filled purple when chosen).

Line form carries state:
- Solid 3px line form beside a date, or a solid 3px top rule: applies or in force. Purple for the reader's route, ink for the law's full list of dates.
- Dashed 2.5px line form or top rule, in the same colours: not yet.
- On the time band: the ink axis is solid up to today and dashed after; a pin is a filled purple dot (applies) or a white dot with a dashed purple ring (not yet).
- A dashed purple circle: the next date on the reader's route, everywhere it appears (readout, callout, legend, and on the band a 15px dashed ring around the next pin).
- Dashed underline under ink-two text: an act not yet on the map.
- Dashed 1px ink-two border: content not yet reviewed (the state tag).
- Dashed brown line: a stage boundary on the terrain.

### Named Rules
**The Line Form Rule.** State is carried by the form of a line plus a word, never by colour alone. Solid is applies or in force; dashed is not yet. Every dashed state mark sits next to its word ("applies", "not yet", "Not yet:", "not yet reviewed"), and the band's legend names each form.

**The Two Markers Rule.** The next date on the route is the reader's and is always a dashed purple circle; today is the calendar's and is the orange flag. They never share a form.

## Components

### Buttons
Condensed labels in a tight, confident box, sentence case.
- **Shape:** gently rounded (6px), 1.5px purple border.
- **Primary:** course purple fill, on-course text, 600 condensed at 1.05rem, letter-spacing 0.04em, 12px by 20px padding, optional 20px line icon left of the label. One per action row ("Read the act"); the other actions in the row are plain links.
- **Secondary:** ground fill, deep purple text, same border and type.
- **Hover / Focus:** background eases over 200ms (primary to deep purple, secondary to course tint). Focus is a 3px purple outline offset 3px.

### Answer Cards (act page)
A radio group that asks what the reader does with the AI and redraws the route. Four cards in a 2 by 2 grid with a 12px gap (one column at 1100px and below).
- **Shape:** 8px radius, 1.5px strong-rule border, ground fill, at least 128px tall, 18px padding (16px at the bottom).
- **Content:** a 34px start triangle outlined in purple on the left, the reader's own words in Act Title ink, and the act's term below in cite-size ink two ("AI Act: provider").
- **Hover:** border turns purple and the card lifts (Card hover lift), over 160ms.
- **Checked:** 2.5px purple border (padding shrinks to keep the size), course-tint ground, the triangle fills purple and the words turn deep purple.
- **Focus:** the native radio is hidden; its focus draws a 3px purple outline offset 3px on the card.
- **Behaviour:** choosing a card swaps the route on the map, the readout, the route list, Words to know, the callout and the band's pins, and announces the new route in a polite live region. `?route=` and an article anchor select a route on load.

### Role Segments (role page)
- **Style:** equal-width segments in a row with a 6px gap, 1.5px purple border, 5px radius, deep purple condensed 600 text, at most 460px wide.
- **State:** the checked role fills with course purple and on-course text; the radio input is visually hidden and its focus draws a 3px purple outline on the label. Switching role swaps the role table's rows without reloading.

### Cards / Containers
- **Corner Style:** 8px.
- **Background:** ground.
- **Shadow Strategy:** none at rest (see Elevation).
- **Border:** 1px hairline for content cards; 1.5px strong rule for answer cards; 1.5px purple for the readout. Route lists, dates and related lists are hairline rows, not separate cards.
- **Internal Padding:** 14px by 16px.
- **Fact card (MCP page):** a hairline card with a provenance grid under the fact: condensed ink terms on the left, ink-two values on the right, long URLs allowed to break anywhere.

### Inputs / Fields
- **Masthead search field:** a link styled as a field, 1.5px purple border, 6px radius, 18px magnifier icon and ink-two text. At 1600px and below it is a 44px purple-ringed circle holding only the icon.
- **Theme toggle:** a 44px round button with a 1.5px strong-rule border on the ground, holding a 20px half-filled disc in ink two; hover turns icon and border purple (160ms). It reports `aria-pressed` for the dark theme.
- **Searchbox:** 2px purple border, 8px radius, 1.2rem Barlow input with no inner outline; focus-within adds the 4px course-tint halo.
- **Facets:** borderless fieldsets with uppercase condensed legends and 16px checkboxes tinted with `accent-color` purple; at 1100px and below they sit inside a "Filters" disclosure with a purple chevron.

### Navigation
- **Acts nav:** condensed 500 at 1.02rem, ink. The current act is purple with a 3px purple underline bar. Acts not on the map yet follow an uppercase "Not yet:" label in ink two and carry a dashed ink-two underline.
- **Breadcrumb:** condensed 600 at 1rem, sentence case, ink two ("Map / Acts / AI Act"); only the link to the map is purple, without underline.
- **Mobile:** the acts row scrolls sideways with snap points and a right-edge fade mask.

### Process Map (signature)
The act's stages as slanted flat bands (wide) or stacked rows (narrow), each in its stage tint, divided by dashed contour lines (2px, 8/7 dash; 1.5px, 6/5 on the narrow map), stage names in condensed 600 ink (22px, 24px at 1100px and below; 15px narrow), broken over two or three lines where long; "General-purpose models" breaks after its hyphen onto three lines. The course is drawn per route and climbs the full height of the map: a 4px purple round-capped leg line from a ground-filled start triangle at the bottom left, through numbered controls (21px ground circle, 4px purple ring, 34px deep-purple condensed numeral beside it, a 28px invisible hit area) to a purple flag on a pole whose foot is the end of the leg. On the narrow map the ring is 12px with a 3.5px stroke, numerals 17px and the leg 3px. Controls link to the article in the route list and fill with course tint on hover or focus.

### Map Readout
A small panel in the top right corner of the map (24px in; 16px at 1100px and below): ground, 1.5px purple border, 8px radius, 14px by 18px padding, the readout float shadow. Condensed 500 ink-two lines: the number of articles on the route (700 at 1.5rem, ink), then an 18px dashed purple next-date mark with "Next date 2 Dec 2026, in 18 days". At 900px and below it sits under the narrow map, flat.

### Route Rows
The route list is an ordered list of hairline rows (20px padding, a rule above each and below the last) in three columns: a 52px marker, the article (Act Title, ink, purple on hover, with a short ink-two note), and its dates (220px to 300px). The marker is a 44px purple circle with an on-course 700 numeral; the first row (Article 2) takes a 40px start triangle and the last row the map's finish flag, a filled rectangular flag on a pole, with "End of the reading list, not a check that anything is done." Each date line is a 28px line form (3px solid or 2.5px dashed purple), the date in 700 at 1.5rem ink, the Article 113 point that sets it right-aligned in cite-size ink two, and the state word under it ("applies", "not yet · high-risk under Annex III"). At 640px and below the dates move under the title. A route ends with a cite naming where titles and dates were read.

### Words to Know
A column beside the route, sticky 96px from the top, under a 3px ink rule: an Act Title heading and small paragraphs that define the route's term (`dfn` in ink 600) with a cite of the article summarised; the closing note is a cite-size line.

### Time Band
The "When it applies" section. A legend line in small ink two names every mark (solid, dashed, next date, today). A callout sets the dashed next-date mark (30px), the date in Numeral ink and the countdown in 600 2rem deep purple beside the sentence that says what applies, with its cite. The band (1200 by 250 SVG, full width) draws:
- the axis in ink, 3px solid to today, 2.5px dashed (10/8) after;
- year ticks (1.5px ink) with 600 18px ink-two years, and a 2px ink-two tick for every Article 113 date;
- today: a 1.5px ink line from the axis down to the today flag (22px), labelled "Today, 14 Nov 2026" in 600 17px ink;
- the route's dates as pins on 1.5px purple stems: 9px dots, filled (applies) or white with a dashed ring (not yet), the next one ringed by a 15px dashed purple circle (2.5px, 5/4 dash); each labelled with its date (700 19px ink) and articles (600 16px deep purple).
The band hides at 640px and below.

### Every Date in Article 113
An Act Title heading over a grid of auto-filled columns (at least 280px, 32px apart). Each date sits under a 3px solid or 2.5px dashed ink top rule (the law's list, not the reader's route), the date in 700 1.375rem ink with its state word beside it in cite-size ink two, then what applies in small text with its cite block. A closing cite names the state date and the text read.

### About the Act (drawer)
A `details` disclosure, closed on load, between two hairlines. The summary row sets the Act Headline beside a small ink-two line of key facts and a purple chevron (two 2.5px borders, 10px) that turns over 200ms when opened. The body runs in two columns (1.2fr / 1fr, 56px gap; one column at 1100px and below): the plain-words lede, its state tag and an at-a-glance table (condensed 600 ink row heads 11rem wide, hairline rows) on the left; "Beside the act", a hairline list of related acts with their kind in cite-size ink two, on the right.

### Citation and State Marks
- **Cite line:** small ink-two text under every fact naming the article and the act that set it, with links.
- **Bracket gap:** nested points in a citation are separated by a thin space drawn as generated content (`.pp::before`), so "Art. 113(c)(i)" reads as two groups, the underline stays one run, and the copied text has no space.
- **State tag:** an uppercase condensed label in a dashed ink-two box, e.g. "Explanation draft · not yet reviewed", set next to content nobody has checked.
- **Plain gap line:** "Obligations not yet broken down" as a cite line where the breakdown does not exist yet.

### Role Strip (role page)
The six acts as slanted bands divided by dashed contour lines: the act the map has read carries terrain (`stage-scope`), the acts not yet read are blank ground, so the fill says what has been read; act names in condensed 600 ink. The course runs only through the AI Act: a short purple leg from a start triangle to one control marked "AI", linking to the route on the act page. The acts not yet read carry no course, only "not yet read" in ink two. It hides at 640px and below.

### Notices Footer
Every page ends with two ink-two notices under a 2px ink rule, with their lead words in ink 600: "Information, not legal advice." and "Independent project, not affiliated with the European Union." The records licence sits with the second.

### Agent Answer (MCP page)
The tool call is set in condensed 500 deep purple on a course-tint panel; the JSON response sits in a code block (code ground, code text, lavender keys, pale yellow strings) with a hairline border; a panel-ground box with a 1.5px hairline carries the copyable attribution line.

### Motion
One easing curve, `cubic-bezier(0.16, 1, 0.3, 1)`. Hover and state changes run 160ms to 200ms. One authored moment: choosing an answer draws the route. The leg draws itself along its length over 760ms; controls and the flag pop from 55% scale over 340ms, staggered 80ms apart after 140ms; the readout, callout and band pins arrive from 6px below and 35% opacity over 420ms. Under `prefers-reduced-motion: reduce` none of it runs: the route swaps at once and the live region still announces it. Nothing moves on load.

## Do's and Don'ts

### Do:
- **Do** keep purple for the reader: course, controls, the chosen answer, the route's dates, links, primary action, focus, selection, wordmark. Headings, labels, table heads, breadcrumb text and structural rules are ink.
- **Do** keep orange for the today flag alone, white and orange on the diagonal, outlined in ink.
- **Do** show state with line form plus a word: solid for applies or in force, dashed for not yet.
- **Do** put a cite line under every fact, and label unchecked content with the dashed state tag or a plain "not yet" line.
- **Do** end every page with both notices: information, not legal advice; independent, not affiliated with the European Union.
- **Do** draw the law's stages as flat terrain tints with dashed contour boundaries, and the route as a purple course of start triangle, numbered controls and a finish flag standing on the course.
- **Do** set dates and identifiers in tabular figures, and display text and labels in Barlow Condensed.
- **Do** give controls the reader must find a strong-rule edge (at least 3:1); keep hairlines for dividing regions.
- **Do** write components against token names so the dark theme follows without new rules.
- **Do** divide regions with 1px hairlines; reserve shadow for what is lifted over the map or under the pointer.

### Don't:
- **Don't** colour headings, section labels or the law's content purple.
- **Don't** use the today orange for text, fills, emphasis or the next date.
- **Don't** signal state by colour alone; a dashed line without its word is not enough.
- **Don't** show a fact without its citation, or show unchecked content without its label.
- **Don't** shade, gradient or texture the terrain tints, or use them as text colours.
- **Don't** tint a shadow purple, or put a shadow on a card at rest.
- **Don't** set paragraphs in the condensed face.
- **Don't** fall back to a sidebar tree over a wall of legal text.
