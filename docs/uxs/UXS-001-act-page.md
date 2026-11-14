# UXS-001 — The act page

> **Status** · Draft v0.1 · 2026-11-14 · mockup built ([`ai-act.html`](../mockups/ai-act.html)),
> reviewed (Impeccable finish review: ship)
> **IA anchor** · [`§surfaces/act`](IA.md#surfaces) · [`§shell-regions`](IA.md#shell-regions) ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §4–5 ·
> [05 — Design system](../concept/05-design-system.md)

---

## Why this UXS exists

The act page is where a founder first meets an act: what it is, which articles they must read for
their role, and when each part applies. It carries the signature of the whole product, the course
over fixed terrain.

## Principles

- **The map is a way into the text, not a summary instead of it.** Every control opens an article.
- **The reader picks the role; the page never decides it.**
- **Dates are the act's own**, read from the consolidated text and cited to the act that set them.
- **The gaps show** — the draft explanation and the unbroken-down obligations are labelled.

## Scope

**In scope** · masthead, breadcrumb, title, status line, opening paragraph, actions, quick links,
the process map with the route box, "Your route", "When each part applies", "At a glance",
"Beside the act", notices footer.

**Non-goals** · the article page (`/acts/<act>/articles/<n>/`, not designed yet); the plain-words
explanation's full text; a role without high-risk duties (open, see below).

**Boundary note** · Behaviour (the role switch's motion, keyboard order) belongs in an RFC.

## Layout

### Desktop (≥ 1101px)

```text
┌──────────────────────────────────────────────────────────────────────┐
│ Masthead: wordmark (+ tagline) · acts nav · search                   │
├───────────────────────────┬──────────────────────────────────────────┤
│ Map / Acts                │ PROCESS MAP — six slanted stage bands     │
│ AI Act — Regulation …     │ ▵ ─ 1 ─ 2 ─ 3 ─ 4 ─ 5 ─ 6 ─ 7 ─ ⚑          │
│ status line (amended by…) │                       ┌ Your route ─────┐ │
│ opening paragraph         │                       │ Provider|Deployer│ │
│ [explanation draft tag]   │                       └──────────────────┘ │
│ [Read the act] [Route]    │                                          │
│ quick links               │                                          │
├───────────────────┬───────┴──────────────┬───────────────────────────┤
│ YOUR ROUTE        │ WHEN EACH PART APPLIES│ AT A GLANCE               │
│ ▵ Article 2       │ ● 1 Aug 2024 in force │ Type, CELEX, ELI, …       │
│ ① Article 5 …     │ ● …                   │ BESIDE THE ACT            │
│ …                 │ ◌ 2 Dec 2027 not yet  │ amending, implementing,   │
│ cite note         │ legend note           │ guidelines (kind after)   │
├───────────────────┴───────────────────────┴───────────────────────────┤
│ Notices footer                                                       │
└──────────────────────────────────────────────────────────────────────┘
```

| Region | Size | Content |
| --- | --- | --- |
| Text column | 5fr | Breadcrumb, `display` title, status line with a 2px rule, `lede` (68ch), state tag, actions, quick links |
| Map column | 7fr, full height, no padding | One drawing, `meet`, stage bands extended past it so the column is always filled; start, all controls and finish always inside |
| Route box | Floats top-right over the map, the only shadow | "Your route", role segments, one sentence naming the role and that the route is EU Tech Reg's |
| Lower band | 1.1fr / 1fr / 0.9fr, hairline column rules | Route list · dates timeline · at a glance + beside the act |

### Phone (≤ 640px)

The map is redrawn, not shrunk: the stages as stacked rows top to bottom, the course descending,
labels 15px and numerals 17px. The route box follows the map in the flow; the lower band stacks.

## Component states

| Component | Default | Hover | Active / selected | Focus | Not yet / gap |
| --- | --- | --- | --- | --- | --- |
| Map control | White circle, 4px `course` ring, `course-deep` numeral clear of both legs | `course-tint` fill | — | 3px outline | — |
| Role segment | White, `course` border, `course-deep` label | — | `course` fill, white label; course and route list redrawn | 3px outline on the label | — |
| Route row | Number circle, title (`title`, ink), cite line | Title purple, underlined | — | Outline on the link | "Obligations not yet broken down" |
| Date row | Solid spine, filled dot, "applies"/"in force" | — | — | Outline on cite link | Dashed spine, dashed ring, "not yet" |
| Explanation | `lede` | — | — | — | Dashed state tag "Explanation draft · not yet reviewed" |

## Accessibility

- The map is an `img` with a title and description naming the stages and the role's course; the
  route list carries the same information as text.
- Role segments are a radio group; the course switch needs no script.
- Contrast: ink on every stage tint ≥ 4.5:1; `course` and `ink-2` on white ≥ 8:1.
- No information by colour alone: dates and nav use line form plus a word.

## Acceptance criteria

- [ ] Start triangle, every control, the finish flag and "On the market" visible at 1120, 1250,
  1280, 1366, 1440 and 1600px.
- [ ] No control numeral sits on a leg, at desktop or phone width.
- [ ] Every date row cites its Article 113 point and the act that set it.
- [ ] Every article title is verbatim from the consolidated text and links to EUR-Lex.
- [ ] The route box says the route is drawn by EU Tech Reg, not by the act.
- [ ] The explanation carries its "not yet reviewed" tag until reviewed.
- [ ] Phone: the map's stage labels ≥ 15px.

## Open

- How the course is drawn for a role with no high-risk duties (for example a deployer of a
  minimal-risk system).
- The article page this one links into.
