# UXS-009 — Coming from outside the EU

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/outside`](IA.md#surfaces) · `/coming-to-the-eu/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [01 — Vision](../concept/01-vision.md) (companies coming to the EU) ·
> [SCOPE](../wip/SCOPE.md) (coming from outside the EU)

---

## Why this UXS exists

A company from the US or elsewhere asks: do these rules reach us with no one here, what must we put
in place to sell, who carries the duty in the EU? This view gathers, act by act, the provisions on
reach, representation and the EU-side roles.

## Principles

- **The act's own words for reach**, quoted short and cited — reach is the question everything
  else depends on.
- **The map shows the provisions; the company applies them.** Never "you are reached".
- **One row per act**, so the answer reads across acts.

## Scope

**In scope** · per act: territorial reach, the representative provision, importer and distributor
roles; the acts not yet read.

**Non-goals** · national registration, tax, company law.

## Layout

```text
Map / Coming to the EU
What the acts say about companies outside the EU

AI ACT — Regulation (EU) 2024/1689
 Reach       Article 2(1)(a): providers placing AI systems or general-purpose AI models on
             the EU market, "irrespective of whether those providers are established or
             located within the Union or in a third country"
             Article 2(1)(c): providers and deployers in a third country "where the output
             produced by the AI system is used in the Union"
 In the EU   Article 22 — Authorised representatives of providers of high-risk AI systems
             Article 54 — Authorised representatives of providers of general-purpose AI models
 Down the    Article 23 — Obligations of importers · Article 24 — Obligations of distributors
 chain       Article 25 — Responsibilities along the AI value chain
NOT YET:     GDPR · Data Act · Machinery Regulation · Cyber Resilience Act · Product
             Liability Directive
```

The AI Act rows are real: the Article 2(1) wording and the article titles were read in the
consolidated text on 2026-11-14.

| Region | Content |
| --- | --- |
| Act block | Reach (short quotes with point citations), representation, EU-side roles — each linked |
| Not yet | The acts not read, after "Not yet:" |

## Component states

| Component | Default | Not yet |
| --- | --- | --- |
| Act block | Three rows, each cited | Collapsed to the act's name in `ink-2` |
| Quote | Short, in quotation marks, with its point | — |

## Accessibility

- Each act is a section with its own heading; rows are a definition list.

## Acceptance criteria

- [ ] Quotes are short and cited to the point.
- [ ] No sentence tells the reader whether they are reached.
- [ ] Acts not read are shown as not yet.
