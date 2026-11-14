# IA — Information architecture

> **Status** · Draft v0.1 · 2026-11-14 — from the built mockup and
> [04 — Architecture](../concept/04-architecture.md). Every UXS anchors here.

*The surfaces EU Tech Reg has, how a reader moves between them, the addresses that never break,
and the regions every page shares.*

---

## §overview

Two ways in, one map (vision, [01](../concept/01-vision.md)):

- **People browse** the site — act pages, views by role, search.
- **Agents ask** over MCP — the same records, the same citations, a link back to the site on every
  fact.

The site is generated from the records; nothing here is written by hand page by page.

## §surfaces

| Surface | What the reader does there | UXS | Mockup |
| --- | --- | --- | --- |
| `act` | Sees one act as stages, picks a role, follows the course to the articles, sees when each part applies | [UXS-001](UXS-001-act-page.md) | [ai-act.html](../mockups/ai-act.html) |
| `role` | Sees one shared role across every act, each act's own term beside it | [UXS-002](UXS-002-role-view.md) | [role.html](../mockups/role.html) |
| `search` | Finds records by words and filters | [UXS-003](UXS-003-search.md) | [search.html](../mockups/search.html) |
| `agent-answer` | (Agent) receives cited facts; (person) sees what an agent gets | [UXS-004](UXS-004-agent-answer.md) | [mcp-answer.html](../mockups/mcp-answer.html) |
| `home` | Starts somewhere | Not specified yet | [index.html](../mockups/index.html) (mockup index only) |
| `project` | Reads how the map is made: concept, RFCs, ADRs, this IA | The docs site as today | — |

Not yet designed: the timeline view across acts, the relation map, "coming from outside the EU",
the re-reading queue (02, section 7).

## §navigation

- **Masthead acts nav** — the six first acts. Acts on the map are links; acts not yet on the map
  follow a visible "Not yet:" label and carry a dashed underline.
- **Breadcrumb** — `Map / <section>`, linking back to the map.
- **Within an act** — the role switch re-draws the course and the route list in place; controls on
  the map and rows in the route list link to the article on the act page; every article title links
  to EUR-Lex.
- **Across acts** — "All acts for your role" from the act page to `role`.
- **Search** — the masthead field opens `search`.

## §url-structure

Permalinks are part of the product: agents hand them on (04, section 5), and **a record's address
never changes**. A retired record keeps its page, marked retired, pointing to what replaced it.

| Address | Surface |
| --- | --- |
| `/` | home |
| `/acts/<act>/` | act page, e.g. `/acts/ai-act/` |
| `/acts/<act>/articles/<n>/` | one article's record and obligations |
| `/acts/<act>/dates/#<date-id>` | a date record, e.g. `#high-risk-annex-iii` |
| `/roles/<role>/` | role view, e.g. `/roles/makes-it/` |
| `/search/?q=…` | search |
| `/for-agents/` | what agents get, how to connect |
| `/project/…` | concept, RFCs, ADRs, this IA |
| `mcp.eutechreg.eu/mcp` | the MCP endpoint |

The mockup uses flat file names (`ai-act.html`); the built site uses the addresses above.

## §shell-regions

Every page has the same three regions:

| Region | Contents | Rule |
| --- | --- | --- |
| Masthead | Wordmark (and tagline at desktop widths), the acts nav, search | Sticky; one row of acts at every width from 1101px up, a scrolling row below 640px |
| Main | The surface | Starts with a breadcrumb and the page title |
| Notices footer | "Information, not legal advice." and "Independent project, not affiliated with the European Union." plus the records licence | On every page, no exceptions |

## §shared-tokens

All colour, type, spacing, radius and breakpoint values: [UXS-000](UXS-000-shared-tokens.md). No
UXS defines its own token.

## §states

The states every surface can show, in the same form everywhere:

| State | Shown as |
| --- | --- |
| Applies / in force | Solid line or dot, word "applies" or "in force" |
| Not yet | Dashed line or ring, word "not yet" |
| Not yet on the map | "Not yet:" label, dashed underline |
| Not yet reviewed | Dashed box around "… · not yet reviewed" |
| Not yet broken down | Cite line "Obligations not yet broken down" |
| Stale (to come, 02 §7) | Marker beside the read date |
| Unchecked | Not shown at all |
