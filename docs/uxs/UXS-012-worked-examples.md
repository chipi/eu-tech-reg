# UXS-012 — Worked examples

> **Status** · Draft v0.2 · 2026-11-15 · not built; the library of companies agreed in outline
> (operator, 2026-11-15)
> **IA anchor** · [`§surfaces/examples`](IA.md#surfaces) · `/examples/` and `/examples/<slug>/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [UXS-001](UXS-001-act-page.md) (routes) · [UXS-002](UXS-002-role-view.md) ·
> [UXS-007](UXS-007-timeline.md)

---

## Why this UXS exists

An inventory answers "what is there"; a founder first asks "where do I start, and what does this
look like for a company like mine?" (operator, 2026-11-14). Worked examples answer that: a small
library of realistic, **fictional** companies, each walked through the map, so a visitor sees the
map used before using it.

## Principles

- **Fictional companies, real law.** The companies are invented (inspired by real kinds of startup,
  never naming one); every legal statement about them is a cited record.
- **Information, not advice — by construction.** An example shows which acts, articles and dates a
  company like this would look at, and where the text says so. It never concludes that the company
  *is* high-risk, *is* reached, or *is* compliant: those tests are named and linked, and left to the
  reader.
- **Founder words first, legal words second**, as everywhere (05 §9).
- **An example is a set of routes**, not new content: it links into the act pages with the route
  already chosen (`?route=…`), so the example and the map can never disagree.
- **Unchecked means not shown.** Until an example's claims are read against the texts, it is not
  published; while being written it carries the "not yet reviewed" tag.

## Taxonomy

Every example is tagged, and the tags are search facets (operator, 2026-11-14):

| Facet | Values (first set) |
| --- | --- |
| Stage | Early-stage startup · scale-up · SME · enterprise · public body |
| Domain | HR · health · finance and insurance · industry and robotics · logistics and warehousing · automotive · consumer · education · media · energy |
| What they do | Build an AI system · use one · build a general-purpose model · bring one into the EU · make a connected device |
| Trigger point | Launching in the EU · an enterprise customer's AI questionnaire · adding AI to an existing product · due diligence for a round · entering the EU from outside · buying an AI tool · a date approaching |

Examples cover founder mode in every size — a two-person startup, a consultant's client, an
enterprise team. Each example also gets synthesized reads ([UXS-013](UXS-013-synthesized-reads.md)).

## The library

Fourteen fictional companies (operator, 2026-11-15): seven startups and seven enterprises. Each
line is what the company does, in its own words; which acts it touches and what each act calls it
are written only when the example is built, from the records, and cited.

| # | Company | Stage | Domain | What they do |
| --- | --- | --- | --- | --- |
| 1 | **Ledgerline** | Early-stage startup | Finance | An AI agent that does bookkeeping for small firms, built on a general-purpose model API |
| 2 | **Shortlist** | Startup | HR | Software that ranks job applicants for HR teams |
| 3 | **Hearth** | Scale-up | Consumer, energy | A smart thermostat with an app and a cloud service |
| 4 | **Northwind Voice** | Scale-up, outside the EU | Consumer | A US company selling AI phone support, with no EU office yet |
| 5 | **Picklane Robotics** | Scale-up | Industry and robotics | A mobile warehouse robot with an on-board vision model |
| 6 | **Mimic Studio** | Startup | Media | A tool that clones voices for dubbing |
| 7 | **Alpen Models** | Scale-up | Industry and robotics | A European start-up training an open-weight foundation model |
| 8 | **Velmark Utilities** | Enterprise | Energy (traditional) | A regional grid operator adding AI that predicts outages and sends repair crews, with smart meters streaming customer data |
| 9 | **Solvane** | Enterprise | Energy (new) | Runs solar parks and home batteries; its AI trades the stored power and controls customers' batteries remotely |
| 10 | **Transvia Freight** | Enterprise | Logistics | A road-freight group whose AI plans routes and scores drivers from the trucks' telematics |
| 11 | **Brakemoor Systems** | Enterprise | Automotive | A supplier to carmakers building a camera that watches the driver for drowsiness |
| 12 | **Halden Distribution** | Enterprise | Logistics and warehousing | A warehouse operator buying robots like Picklane's and AI that sets pick targets for its staff; told from its outside advisor's side (the consultant's-client case) |
| 13 | **Kilnworth Industries** | Enterprise | Industry and robotics | A machine maker adding predictive maintenance and selling access to its machines' data |
| 14 | **Meridian Mutual** | Enterprise | Finance and insurance | An insurer using AI to price life and health policies |

Pairs are deliberate: Picklane builds the robot Halden deploys (provider and deployer of the same
kind of system); Ledgerline and Northwind Voice build on general-purpose models like Alpen's.

## Scope

**In scope** · the examples index, one example page, the "start from an example" entry on home and
the act pages.

**Non-goals** · real company names; any verdict.

## Layout

### Examples index

```text
Map / Worked examples
Start from a company like yours
lede: fictional companies, real law — each walked through the map, every line cited
┌ example card ────────────────────┐ ┌ ─────────────────────────────┐
│ Picklane Robotics                │ │ Ledgerline                   │
│ "We build a warehouse robot with │ │ "We build an AI agent on a   │
│  a vision model and sell it"     │ │  general-purpose model API"  │
│ AI Act · CRA · GDPR · (Machinery)│ │ AI Act · GDPR · Data Act     │
└──────────────────────────────────┘ └──────────────────────────────┘
```

Cards are allowed here because each is one company, not a feature list; one hairline card each,
no icons, no shadow.

### Example page

```text
Map / Worked examples / Picklane Robotics            [Fictional company]
"We build a warehouse robot with an on-board vision model and sell it in the EU."
WHAT THEY DO, IN THEIR WORDS · AND WHAT EACH ACT CALLS IT
  We build it and offer it under our name → AI Act: provider · CRA: manufacturer (once read)
THE ACTS IT TOUCHES                       → each with why, cited (the act's scope article)
WHERE TO START READING                    → route links: AI Act ?route=provider, …
WHAT'S COMING                             → the timeline (UXS-007) filtered to these acts
WHAT THE MAP LEAVES TO THEM               → "Whether the vision system is high-risk is the test in
                                             Article 6 and Annex III" — linked, not answered
```

| Region | Content |
| --- | --- |
| Head | Company name, the **Fictional company** tag, one sentence in the founder's words |
| What they do | Founder words, then each act's term, each cited to the definitions article |
| Acts it touches | One row per act: the plain reason, the scope article, linked |
| Where to start | The routes, as links into the act pages with the route preselected |
| What's coming | The timeline window for these acts |
| Left to them | The tests the company applies itself, each named and linked |

## Component states

| Component | Default | Not yet |
| --- | --- | --- |
| Fictional tag | `label`, solid hairline box (not dashed: dashed means "not yet") | — |
| Act row | Act, plain reason, cite line | Act not yet read: listed after "Not yet:", no reason given |
| Route link | Purple link with the act's route name | — |

## Accessibility

- The fictional tag is text, read first after the title.
- Every route link names the act and the route ("AI Act — route for an AI system you offer").

## Acceptance criteria

- [ ] Every example is marked fictional in its head.
- [ ] No sentence concludes what the company *is* under any act; every test is named and linked.
- [ ] Every legal statement carries a cite line; every route link lands on a route that exists.
- [ ] An example that touches an act not yet read says so instead of guessing.
- [ ] Before an example is published, its company name is checked against real companies in the EU
  and its sector, and changed if one exists.

## Open

- Nothing for the list: the fourteen above, agreed in outline on 2026-11-15. Names are checked
  against real companies before any example is published.
