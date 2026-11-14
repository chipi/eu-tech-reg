# UXS-007 — The timeline across acts

> **Status** · Draft v0.1 · 2026-11-14 · not built
> **IA anchor** · [`§surfaces/timeline`](IA.md#surfaces) · `/timeline/` ·
> [UXS-000](UXS-000-shared-tokens.md)
> **Related** · [02 — Project concept](../concept/02-project-concept.md) §5 (views by date) ·
> UXS-001's dates timeline

---

## Why this UXS exists

An investor asks "what lands before the next round"; a founder asks "what changes in the next 24
months". Both are a window of time across every act. This view answers them.

## Principles

- **One spine, every act** — the act page's dates timeline, widened to all acts.
- **Today is marked**; solid before it, dashed after.
- **Each date keeps its cite line** — the point and the act that set it.
- **Acts not yet read are visible as gaps**, not silently absent.

## Scope

**In scope** · the window control (from, to), the act filter, the timeline, today marker,
the not-yet-read note.

**Non-goals** · dates of acts not yet on the map; proposals (they appear in the relation map).

## Layout

```text
Map / Timeline
What starts when
[ From 14 Nov 2026 ] [ To 14 Nov 2028 ]   Acts: ☑ AI Act  · Not yet: GDPR, Data Act, …

        2026              2027                    2028
 ──────●┼─────────◌──────────────────◌────────────────◌─────
       today   2 Dec 2026        2 Dec 2027          2 Aug 2028
               AI Act            AI Act              AI Act
               Art. 5(1)(ba),(bb), Chapter III §1–3,    the same, for
               5(1a),(1b)        Annex III systems     Annex I systems
               Art. 113(a) ·     Art. 113(c)(i) ·      Art. 113(c)(ii) ·
               Reg. 2026/1744    Reg. 2026/1744        Reg. 2026/1744
```

The three AI Act dates shown are the real ones in that window (consolidated Article 113, read
2026-11-14).

| Region | Content |
| --- | --- |
| Controls | From / to dates, act filter (acts not read are listed, disabled, "not yet") |
| Timeline | Horizontal at ≥1101px, one lane per act; vertical (UXS-001's spine) below |
| Entry | Date (`label`), act, what applies, cite line; state by line form |

## Component states

| Component | Applies (before today) | Not yet (after today) |
| --- | --- | --- |
| Entry dot | Filled `course` | Dashed ring |
| Spine | Solid | Dashed |

## Accessibility

- The timeline is an ordered list in date order; the horizontal drawing is presentation only.

## Acceptance criteria

- [ ] Every entry carries its point and the act that set it.
- [ ] Today is marked, and state is line form plus a word.
- [ ] Acts not read are listed as not yet, never omitted silently.
