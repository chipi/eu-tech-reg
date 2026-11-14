# UXS-NNN — [Surface name]

> **Status** · Draft v0.1 · [date] · [mockup built / not built]
> **IA anchor** · `§surfaces/[name]` · `§shell-regions` · [UXS-000](UXS-000-shared-tokens.md)
> **Related** · PRD-NNN, RFC-NNN (behaviour), ADR-NNN

---

## Why this UXS exists

[1–2 sentences. What this surface is and why it needs its own visual contract. If it is "just
like UXS-NNN", extend that one instead.]

## Principles

[3–5 convictions for this surface — the *why* behind its layout and states.]

- [Principle]

## Scope

**In scope** · [regions and components this UXS covers]

**Non-goals** · [what it does not cover, and where that lives]

**Boundary note** · Behaviour (motion, keyboard order, debounce) belongs in an RFC, not here.

## Layout

### Desktop (≥ 1101px)

```text
[ASCII sketch of the regions]
```

| Region | Size | Content |
| --- | --- | --- |
| [region] | [size] | [content] |

### Phone (≤ 640px)

[What is redrawn, what stacks, what hides. Redraw a picture rather than shrink it.]

## Component states

[Static states only.]

| Component | Default | Hover | Selected | Focus | Not yet / gap |
| --- | --- | --- | --- | --- | --- |
| [component] | [tokens] | […] | […] | […] | […] |

## Accessibility

- [Text alternative for every picture; the same information as text nearby]
- [No state by colour alone]

## Acceptance criteria

- [ ] Only UXS-000 tokens.
- [ ] Purple only on the reader's marks; headings and labels in `ink`.
- [ ] A cite line under every fact; gaps labelled; unchecked content not shown.
- [ ] Both notices in the footer.
- [ ] [Surface-specific, checkable at named widths]

## Open

- [Unresolved questions]

---

## Notes on writing UXS in this format

**The boundary is sharp.** UXS is the static visual contract. If a sentence reads "when the reader
clicks X, Y animates", it belongs in an RFC.

**Inherit, never restate.** Tokens live in UXS-000; reference them by name. A value restated here
becomes a second source of truth that drifts.

**Checkable criteria.** Every acceptance criterion names something a screenshot at a named width can
prove or disprove.

**Real content.** Sketches and examples use real records, read from the source and dated; anything
illustrative is labelled as such.
