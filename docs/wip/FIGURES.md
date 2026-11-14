# Figures — where a picture replaces a page

**Status:** candidates (2026-11-14), for the operator to pick from. Asked by the operator: assess,
especially for the synthesized reads, where one picture explains how rules map or fit together.

## The pipeline (orrery's, adapted)

Orrery's `docs/guides/diagram-art-style.md`: a precise SVG sketch holds the factual truth; Higgsfield
turns it into house-style art with the sketch as reference. For EU Tech Reg one step is added,
because image models write plausible law into pictures (seen on 2026-11-14):

1. **Name the figure and what it must explain** — one sentence, the question it answers.
2. **Specify its data** — which records it is drawn from; every label is a record.
3. **Generate the SVG from the records** (a build script, deterministic), in the design system
   (05, UXS-000): the figure that carries facts, with its cite line. **It ships as is.**
4. **The legal advisor reviews it** with the read it belongs to.
5. **Later, at scale: Higgsfield art** from the SVG as reference — only as illustration: text-free,
   or every word checked by the legal advisor. Defined when the time comes.

## Candidates

| # | Figure | The question it answers | Built from | Can be built now |
| --- | --- | --- | --- | --- |
| 1 | The act's timeline strip | What starts when | Date records | Yes (AI Act) |
| 2 | The course over the stages | Which articles, in what order, for what I do | Route records | Yes (AI Act; in the mockup) |
| 3 | What each act calls you | One founder answer, each act's legal word | Vocabulary mapping + definitions | AI Act only |
| 4 | What changed what | Which acts amend or implement which | Relation records | Yes (the Omnibus, implementing acts) |
| 5 | The high-risk test, as structure | The two routes into high-risk (Article 6(1) with Annex I, 6(2) with Annex III) and where the text sets each — never an answer | Article records | After pass 2 reads Article 6 |
| 6 | Who holds which data | Data Act roles and data flows | Data Act records | After the Data Act is read |
| 7 | A product's security life | CRA duties from design to support end | CRA records | After the CRA is read |
| 8 | Who decides about personal data | GDPR controller / processor chain | GDPR records | After the GDPR is read |
| 9 | AI, data and cyber together | For one worked example, which act touches which part of the product | Example + records | After the first pass |

Figures 1, 2 and 4 already exist in some form in the mockup; 5 needs care — it must show where the
test is, never decide it.
