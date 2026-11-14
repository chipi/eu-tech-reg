# UXS-006 — The article page

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/article`](IA.md#surfaces) · `/acts/<act>/articles/<n>/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §1–2, §8 (pass 2) ·
> [UXS-001](UXS-001-act-page.md)

---

## Why this UXS exists

The article is the unit of citation and the obligation is the unit of an answer (02 §1). This page
shows one article broken down into its obligations — who, what, from when, where — each pointing to
its paragraph or point on EUR-Lex. It is where pass 2's work becomes visible.

## Principles

- **The paraphrase sits beside its citation**, never alone. The link lands on the article; the
  point is named in text ("16(f)"), because the consolidated text has article anchors only (03,
  decision 3).
- **Our words are marked as ours**: each obligation is a paraphrase, the article's title is verbatim.
- **Until pass 2 is done, the gap shows**: "not yet broken down", and the link to the text.
- **Applicability tests are shown as tests**, never answered for the reader.

## Scope

**In scope** · breadcrumb (Map / AI Act / Article N), the article's verbatim title, its place in
the act (chapter, section), the stage it sits in, the obligations, the dates that apply to it,
related guidance, the link to the text.

**Non-goals** · reproducing the article's text (point, don't copy).

## Layout

```text
Map / AI Act / Article 16
Article 16 — Obligations of providers of high-risk AI systems     (verbatim)
Chapter III · Section 3 · stage: Requirements · applies from 2 Dec 2027 (Annex III)
                                                and 2 Aug 2028 (Annex I)
[ Read Article 16 on EUR-Lex ]

OBLIGATIONS  ·  role: Provider  ·  product: high-risk AI system
┌──────────────────────────────────────────────────────────────────┐
│ (a) Comply with the requirements of Section 2           16(a) ↗ │
│ (c) Have a quality management system (Article 17)       16(c) ↗ │
│ (f) Have the conformity assessment done before          16(f) ↗ │
│     placing on the market (Article 43)                           │
│ (h) Affix the CE marking (Article 48)                   16(h) ↗ │
│ …                                                                │
└──────────────────────────────────────────────────────────────────┘
[ Our paraphrase · not yet reviewed ]  each row links to its point

BESIDE THIS ARTICLE  ·  guidelines, implementing acts that cite it
```

The rows above are an **illustration** written from Article 16's points (a), (c), (f) and (h), read
in the consolidated text on 2026-11-14; they become records only when pass 2 writes and reviews
them.

| Region | Content |
| --- | --- |
| Head | Verbatim title (`display`), place in the act, stage, application dates with cite lines |
| Obligations | One row per obligation: point letter, paraphrase (`body`), cross-reference, link to the point; role and product as a header line |
| Gap state | "Obligations not yet broken down" and the EUR-Lex link, when pass 2 has not reached the article |
| Beside | Guidance that cites this article, marked binding / non-binding |

## Component states

| Component | Default | Not yet reviewed | Not yet broken down |
| --- | --- | --- | --- |
| Obligation row | Paraphrase, point link, cite line | Dashed state tag on the list | Whole list replaced by the gap line |
| Date line | Solid / dashed per UXS-001 | — | — |

## Accessibility

- Obligations are an ordered list, each item's point letter in text, not only in a circle.
- Every point link names its target ("Article 16(f) on EUR-Lex").

## Acceptance criteria

- [ ] The title is verbatim; every obligation names its point and links to its article.
- [ ] Paraphrases are marked as EU Tech Reg's words.
- [ ] No "you must" anywhere on the page.
- [ ] Unreviewed obligations carry the state tag.

## Open

- Whether role and product filter the list, or label each row.
