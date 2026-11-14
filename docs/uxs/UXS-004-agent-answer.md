# UXS-004 — What your agent gets back

> **Status** · Draft v0.1 · 2026-11-14 · mockup built ([`mcp-answer.html`](../mockups/mcp-answer.html)),
> reviewed (ship)
> **IA anchor** · [`§surfaces/agent-answer`](IA.md#surfaces) · [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [04 — Architecture](../concept/04-architecture.md) §5 (provenance in every answer)

---

## Why this UXS exists

Half of the product has no screen of its own: an agent calls the MCP server and passes the answer
on. This surface shows a person exactly what that answer contains — and fixes, as a contract, how
an answer looks when an agent shows it: every fact with its proof and a link back to the map.

## Principles

- **Provenance travels with every fact**: source on EUR-Lex, the act that set it, the map's
  permalink, record id, read date, state, map version (04 §5).
- **What the answer does not cover is part of the answer.**
- **The attribution line is copyable as is** (CC BY 4.0).

## Scope

**In scope** · the explanation, the tool call, the fact cards with their provenance grid, "Not
covered by this answer", the attribution box, the JSON as received.

**Non-goals** · the MCP tool list and connection guide (`/for-agents/`, not designed yet).

## Layout

```text
Map / For agents
What your agent gets back
lede: the question a founder asks their agent
┌ what_applies(act: "ai-act", role: "provider", …) ┐   course-tint panel
AS THE AGENT CAN SHOW IT        │ WHAT THE AGENT RECEIVES
┌ fact card ─────────────────┐  │ ┌ JSON, ink ground ──────────┐
│ title                      │  │ │ facts[] with record_id,     │
│ statement                  │  │ │ source, set_by, map_url,    │
│ Source · Set by ·          │  │ │ read, state                 │
│ On the map · Read · state  │  │ │ not_covered, notices,       │
└────────────────────────────┘  │ │ attribution, map_version    │
Not covered by this answer      │ └─────────────────────────────┘
[ attribution line ]            │
```

The JSON runs to its closing brace with no inner scroll box, at every width.

## Component states

| Component | Default | Note |
| --- | --- | --- |
| Tool call | `course-deep` condensed on `course-tint` | — |
| Fact card | Hairline card, `title`, provenance grid (term ink, value `ink-2`, long URLs break anywhere) | State shows "checked (title only)" where only the title is checked |
| Attribution | Hairline box on `panel` | Not dashed: dashed means "not yet" |
| JSON | `ink` ground, `code-text`, `code-key`, `code-string` | Wraps, never cut |

## Accessibility

- The provenance grid is a definition list.
- The JSON is real text, selectable and copyable.

## Acceptance criteria

- [ ] Every fact shows source, set by (where an amending act set it), map link, read date, state.
- [ ] "Not covered" states that classification as high-risk is the reader's to decide.
- [ ] Both notices and the attribution line present in the answer, not only in the footer.
- [ ] Nothing cut at 390px.

## Open

- The `/for-agents/` page: connecting an agent, the tool list.
