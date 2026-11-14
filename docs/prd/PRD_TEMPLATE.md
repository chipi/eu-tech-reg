# PRD-NNN — [Feature Name]

> **Status** · Draft v0.1 · [date]
> **Sources** · [brief, discovery notes, prior PRDs]
> **Audiences** · [audience-1], [audience-2]
> **Promises** · *[promise-1]*, *[promise-2]*
> **Principles** · *[principle-1]*, *[principle-2]*
> **Why this is a PRD** · [One sentence: what user-value question is argued here. If this sentence
> is hard to write, it is not a PRD — it is an RFC or an ADR.]

---

[Opening paragraph. A vivid, present-tense moment that puts the reader inside the experience. This
is the magazine lede. No "the user can…" — a specific person doing a specific thing. The rest of the
document is the case for why this should exist.]

## The problem

[1–2 paragraphs. What is broken or absent in someone's experience. Cite something real — a moment, a
frustration, a measured reading. Evidence, not assertion.]

## The experience

[Present-tense narrative of using the thing. A real person doing specific things. This single
section replaces personas, user stories, and half of what functional requirements used to hold. If
you find yourself writing "the user can…", rewrite it as "she scrubs the timeline back to March
2014…".]

## Why now

[Why this earns being built in this phase. What it unlocks downstream. What it costs to defer.
Short.]

## Success looks like

[2–4 markers. Observable in use or in the data. Each marker should be specific enough that you would
recognise it when you saw it. Vague aspirations do not count.]

## Out of scope

[Ruthless. Specific. The line you are not crossing in this PRD, and where the work that crosses it
lives instead (other PRDs, RFCs, later phases).]

## The sharpest threat

[One assumption underneath this PRD that, if wrong, breaks the whole frame. Not a build risk ("the
API might be slow") — a product risk ("the concept might not land"). Write the strongest case
against the work. This is impact-level reasoning that nothing else in the doc system holds.]

## Open threads

[Where this PRD hands off. RFCs to be written, ADRs to be closed, UXS to be drafted. Each thread is
a one-line pointer, not a section. If this list is empty, the PRD is either self-contained or
incomplete.]

## Links

[Related PRDs, RFCs, ADRs, discovery notes.]

---

## Notes on writing PRDs in this format

**Bar.** Not every feature needs a PRD. A PRD is for work where the *user-value argument* needs to
be made. Pipeline plumbing, data formats, infrastructure — those are RFCs and ADRs. If the "Why this
is a PRD" sentence in the header is hard to write, the work belongs elsewhere.

**Voice.** Present-tense, declarative, plain. If a sentence could appear in any tech company's docs,
rewrite it.

**Length.** One to two pages. If the argument does not fit, the argument is not sharp enough yet.

**Doshi level test.** Every paragraph should answer "what changes for the person?" If it answers
"what we are building" or "how we are building it," it belongs in an RFC, not here.

**Sourced, not advised.** Any claim about what an act requires links to the official text and the
date it was read, and the page says it is not legal advice.
