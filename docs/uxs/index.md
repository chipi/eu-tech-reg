# UXS — the visual contracts

A UXS is the **static visual contract of one surface**: layout, component states, accessibility,
acceptance criteria. If a document says *when* something happens rather than what it looks like,
that is behaviour and belongs in an RFC.

Every UXS anchors into the [information architecture](IA.md); none defines its own tokens — all
resolve through [UXS-000](UXS-000-shared-tokens.md). The reasoning behind the look is
[05 — Design system](../concept/05-design-system.md); the [mockup](../mockups/index.html) is the
built reference.

| UXS | Covers | IA surface | Status |
| --- | --- | --- | --- |
| [UXS-000](UXS-000-shared-tokens.md) | Shared tokens | all | Draft v0.1 |
| [UXS-001](UXS-001-act-page.md) | The act page | `act` | Draft v0.1 · mockup built, reviewed |
| [UXS-002](UXS-002-role-view.md) | Your role across every act | `role` | Draft v0.1 · mockup built, reviewed |
| [UXS-003](UXS-003-search.md) | Search | `search` | Draft v0.1 · mockup built, reviewed |
| [UXS-004](UXS-004-agent-answer.md) | What your agent gets back | `agent-answer` | Draft v0.1 · mockup built, reviewed |

"Reviewed" means Impeccable's independent finish review shipped the mockup on 2026-11-14 after three
fix rounds; it does not mean the real site is built.

Not designed yet: home, the article page, the timeline across acts, the relation map, "coming from
outside the EU", the re-reading queue, `/for-agents/`.

## Format

`UXS-NNN-short-slug.md`, numbered sequentially, never renumbered. Copy
[`UXS_TEMPLATE.md`](UXS_TEMPLATE.md) and read the notes at its bottom first.
