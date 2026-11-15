# UXS — the visual contracts

A UXS is the **static visual contract of one surface**: layout, component states, accessibility,
acceptance criteria. If a document says *when* something happens rather than what it looks like,
that is behaviour and belongs in an RFC.

Every UXS anchors into the [information architecture](IA.md); none defines its own tokens — all
resolve through [UXS-000](UXS-000-shared-tokens.md). The reasoning behind the look is
[05 — Design system](../concept/05-design-system.md); the [mockup](../mockups/index.html) is the
built reference, frozen as the skeleton the MVP is built from (operator, 2026-11-14): it is not
expanded per act or per feature, and a UXS without a mockup is built straight into the MVP from
its specification.

| UXS | Covers | IA surface | Status |
| --- | --- | --- | --- |
| [UXS-000](UXS-000-shared-tokens.md) | Shared tokens | all | Draft v0.1 |
| [UXS-001](UXS-001-act-page.md) | The act page | `act` | Draft v0.1 · mockup built and reviewed; changed after the review (four routes, seven stages, tablets) — not re-reviewed yet |
| [UXS-002](UXS-002-role-view.md) | Your role across every act | `role` | Draft v0.1 · mockup built, reviewed |
| [UXS-003](UXS-003-search.md) | Search | `search` | Draft v0.1 · mockup built, reviewed |
| [UXS-004](UXS-004-agent-answer.md) | What your agent gets back | `agent-answer` | Draft v0.1 · mockup built, reviewed |
| [UXS-005](UXS-005-home.md) | Home | `home` | Draft v0.1 · not built |
| [UXS-006](UXS-006-article-page.md) | The article page | `article` | Draft v0.1 · not built |
| [UXS-007](UXS-007-timeline.md) | The timeline across acts | `timeline` | Draft v0.1 · not built |
| [UXS-008](UXS-008-relation-map.md) | The relation map | `relations` | Draft v0.1 · not built |
| [UXS-009](UXS-009-coming-from-outside.md) | Coming from outside the EU | `outside` | Draft v0.1 · not built |
| [UXS-010](UXS-010-re-reading-queue.md) | The re-reading queue | `queue` | Draft v0.1 · not built |
| [UXS-011](UXS-011-for-agents.md) | For agents | `for-agents` | Draft v0.1 · not built |
| [UXS-012](UXS-012-worked-examples.md) | Worked examples | `examples` | Draft v0.2 · not built; 14 companies agreed in outline |
| [UXS-013](UXS-013-synthesized-reads.md) | Synthesized reads and the matrix | `reads` | Draft v0.1 · not built |

"Reviewed" means Impeccable's independent finish review shipped the mockup on 2026-11-14 after three
fix rounds; it does not mean the real site is built.

UXS-005 to UXS-013 are specifications without a mockup yet: their examples use real records where
they say so, and are labelled illustrative where they are not.

## Format

`UXS-NNN-short-slug.md`, numbered sequentially, never renumbered. Copy
[`UXS_TEMPLATE.md`](UXS_TEMPLATE.md) and read the notes at its bottom first.
