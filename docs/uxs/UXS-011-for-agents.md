# UXS-011 — For agents

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/for-agents`](IA.md#surfaces) · `/for-agents/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [04 — Architecture](../concept/04-architecture.md) §5 ·
> [UXS-004](UXS-004-agent-answer.md) · [GUIDE-05](../guide/GUIDE-05-connecting-your-agent.md)

---

## Why this UXS exists

The page a founder or developer reads before connecting their agent: the endpoint, the tools, what
comes back, how to cite it. UXS-004 shows one answer; this page is the door.

## Principles

- **Connect in one step**: the endpoint first, copyable.
- **No login, stated**: the map is public; the rate limit is stated with its number.
- **Every tool shown with a real call and a real answer**, from the records.
- **The citation contract is part of the docs**: what each provenance field means and how to pass
  it on.

## Scope

**In scope** · endpoint, how to add it to an agent, the tool list, one worked call per tool,
the provenance fields, the attribution line, limits, notices.

**Non-goals** · client-specific screenshots (they age), an SDK.

## Layout

```text
Map / For agents
Connect your agent
mcp.eutechreg.eu/mcp                                [ copy ]
No login · public, read-only · rate limit <n> calls / minute per address

TOOLS
what_applies   The acts and articles for a role on a date        [ example → ]
timeline       Dates in a window                                  [ example → ]
find_acts · get_act · get_obligations · related · get_guidance · search   (02 §5 is the one definition)

WHAT COMES BACK          → UXS-004, with the field table:
source · set_by · map_url · record_id · read · state · map_version

PASSING IT ON            the attribution line, copyable
```

| Region | Content |
| --- | --- |
| Endpoint | The URL in `label` type with a copy control |
| Tools | Name (identifier type), one line, a worked example opening below |
| Contract | The provenance field table (as GUIDE-05) |
| Limits | No login; the rate limit; what is not covered |

## Component states

| Component | Default | Focus | Copied |
| --- | --- | --- | --- |
| Copy control | Outlined button | Outline | Label changes to "Copied" |
| Tool example | Collapsed | Outline on its toggle (drawn chevron) | — |

## Acceptance criteria

- [ ] The endpoint is in the first screen and copyable.
- [ ] Every tool example is a real call with a real answer from the records.
- [ ] The rate limit is stated as a number, once decided.

## Open

- The rate limit's number (04 §5).
