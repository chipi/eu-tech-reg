# 03 — Data catalog

> **Status** · Draft v0.2 · 2026-11-14 — every source below was queried on 2026-11-14 unless a
> line says *not checked*. Decisions at the bottom agreed by the operator.

*Where every fact in the map comes from, what each source gives, and what it does not. Read
this before writing a record or the pull. Terms (Cellar, EUR-Lex, CELEX, consolidated version
…) are in the [glossary](00-introduction.md#glossary); what the map adds over these sources is
in [00](00-introduction.md#what-this-project-adds-over-eur-lex-and-cellar).*

The [project concept](02-project-concept.md) says what the map holds. This document says where
each field is read from. The test case throughout is the AI Act, Regulation (EU) 2024/1689
(CELEX `32024R1689`).

---

## 1. The sources

| Source | What it gives | Access | State (2026-11-14) |
| --- | --- | --- | --- |
| **Cellar SPARQL** `https://publications.europa.eu/webapi/rdf/sparql` | Metadata for every act: identifiers, dates, type, relations, subjects, national measures | Open, no login; SPARQL over HTTP GET; CSV or JSON results | **Checked**: queries answered in seconds |
| **Cellar content** `http://publications.europa.eu/resource/celex/{CELEX}` | The text of an act or a consolidated version, by content negotiation | Open; `Accept: application/xhtml+xml`, `Accept-Language: eng` | **Checked**: XHTML of the AI Act (1.26 MB) and of its consolidated version of 2026-07-27 |
| **EUR-Lex website** `https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:{CELEX}` | The same texts for people; the link a reader follows | Browser | Scripted requests (curl, a fetcher) got a generic page, not the act. **Links for people only; never a machine source** |
| **ELI** `http://data.europa.eu/eli/reg/2024/1689/oj` | The European Legislation Identifier, a stable URI for the act | Resolves by redirect | Stored as an identifier (from Cellar). The article-level ELI tried (`…/art_9/oj`) redirected to EUR-Lex's "today's OJ" page from a script: **not used for article links** until checked in a browser |
| **EUR-Lex web service** | Expert search over EUR-Lex | SOAP, believed to need registration | **Not checked**; not needed while Cellar answers |
| **Commission and AI Office pages** | Guidelines and codes of practice not published in the Official Journal | Web pages, PDFs | **Not checked**; read by hand, per document |
| **Standards bodies** (CEN, CENELEC, ETSI, ISO) | Standard numbers, titles, where to buy | Catalogues | **Not checked**; pointers only (vision) |

## 2. Field by field

What each record field (02, section 2) is read from. `machine` fields are pulled; the rest are
written by hand from the text, citing it.

### Act

| Field | Source | Cellar property (`cdm:`) | AI Act value read |
| --- | --- | --- | --- |
| CELEX | Cellar | `resource_legal_id_celex` | `32024R1689` |
| ELI | Cellar | `resource_legal_eli` | `http://data.europa.eu/eli/reg/2024/1689/oj` |
| Title | Cellar | `expression_title` (English expression); `work_title` | "…laying down harmonised rules on artificial intelligence (Artificial Intelligence Act)…" |
| Type | Cellar | `work_has_resource-type` | `REG` (implementing acts `REG_IMPL`, guidelines `NOTICE`, reports `REPORT`) |
| In force | Cellar | `resource_legal_in-force` | `1` |
| Signed, published | Cellar | `resource_legal_date_signature`, `official-journal-act_date_publication` | 2024-06-13, 2024-07-12 |
| Dates in the metadata | Cellar | `resource_legal_date_entry-into-force` (several values), `resource_legal_date_deadline` | 2024-08-01, 2025-02-02, 2025-08-02, 2026-08-02, 2027-08-02; deadlines 2027–2031 |
| End of validity | Cellar | `resource_legal_date_end-of-validity` | 9999-12-31 (open-ended) |
| Subjects | Cellar | `work_is_about_concept_eurovoc`, `resource_legal_is_about_subject-matter` | EuroVoc concepts; subject matters `RDT`, `TECN` |
| Responsible service | Cellar | `resource_legal_responsibility_of_agent` | `CNECT` |
| Version of the record | Cellar | `work_version` | `1.44` — a change signal for the pull |
| Role words, reach, area | Hand | the act's definitions and scope articles | — |

### Dates: which part applies when

**The metadata dates are not enough.** They list dates but not which part of the act each one
starts, and they belong to the act **as first published**. The AI Act shows why:

- Article 113 of the published text: high-risk obligations under Article 6(1) apply from
  2 August 2027.
- Article 113 of the **consolidated text of 2026-07-27**, after the Digital Omnibus on AI
  (Regulation (EU) 2026/1744): high-risk rules apply from **2 December 2027** for Annex III
  systems and **2 August 2028** for Annex I systems, and some Article 5 prohibitions from
  **2 December 2026**.
- The act's metadata, read the same day, still lists 2027-08-02.

So **date records are written by hand from the consolidated text's entry-into-force-and-application
article**, each date citing it; the metadata dates serve only as a cross-check and a change
signal.

### Relations

| Relation | Cellar property | AI Act, read 2026-11-14 |
| --- | --- | --- |
| Amends | `resource_legal_amends_resource_legal` | 9 acts amended by the AI Act |
| Amended by | the same property, read the other way | `32026R1744` (Digital Omnibus on AI, 2026-07-08) |
| Corrected by (corrigenda) | `resource_legal_corrects_resource_legal` | 4 corrigenda, 2025-10-09 to 2026-05-04 |
| Consolidated versions | `act_consolidated_consolidates_resource_legal` | `02024R1689-20240712`, `02024R1689-20260727` (also returns consolidations of the acts the AI Act amends: filter on the CELEX prefix `02024R1689`) |
| Acts based on it | `resource_legal_based_on_resource_legal`, read the other way | Mixed: implementing regulations (2025/454 scientific panel, 2026/1755 proceedings, 2026/2487 sandboxes), the Article 50 transparency guidelines (`52026XC06005`, 2026-11-12), a Commission report, Parliament resolutions — **filter on type** |
| Cites | `work_cites_work` | many; not used at first |
| Legislative procedure | `resource_legal_produced_by_dossier` | the dossier; not used at first |

### Articles, annexes, recitals

From the Cellar XHTML of the text (published, and each consolidated version):

| Unit | Anchor in the XHTML | AI Act count (published) |
| --- | --- | --- |
| Article | `id="art_9"` | 113 (119 anchors in the consolidated text of 2026-07-27) |
| Paragraph | `id="009.001"` | — |
| Annex | `id="anx_III"` | 13 |
| Recital | `id="rct_…"` | 180 |

In the consolidated XHTML each changed passage is marked `▼M1` (or `M2` …) with a link to the
amending act, and unchanged passages `▼B` — so the pull can tell which articles an amendment
touched.

**The citation link** a reader follows is the EUR-Lex page with the article anchor
(`…?uri=CELEX:02024R1689-20260727#art_113`). That EUR-Lex uses the same anchors as the Cellar
XHTML is **believed, not checked**: EUR-Lex did not answer scripted requests. Checked by hand in
a browser before the first record ships.

### Obligations, vocabulary mappings, explanations

Written by hand from the article text, each citing article and paragraph. No source holds them;
they are the map's own work (02, sections 2–4).

### Guidance

- **In the Official Journal** — delegated and implementing acts, and guidelines published as
  Commission notices, are in Cellar and found through the *based on* relation (above), with
  their type.
- **Not in the Official Journal** — some guidelines and codes of practice live only on Commission
  or AI Office pages. Read by hand; the record cites the page and marks it *not in the Official
  Journal*. **Not checked** which AI Act guidance is where.

### Standards

Pointers only. Where a harmonised standard's reference is published in the Official Journal (by
a Commission implementing decision, believed), that publication is the citation; the standard's
number and title come from the standards body's catalogue. **Not checked.**

### National transposition

Cellar has a property for it: `measure_national_implementing_implements_resource_legal` (638
national measures returned for NIS2 and Directive 2016/680 together). For the Product Liability
Directive, `32024L2853`, the first results were Hungarian measures dated 2014 — older than the
directive. **The data is there but needs checking before it is shown**; the link for a directive
(vision: *national layer*) waits on that check.

## 3. Reuse terms

**Commission Decision 2011/833/EU** governs reuse of documents held by the Commission or by the
Publications Office on its behalf (read in Cellar, 2026-11-14; in force):

- documents are available for reuse "for commercial or non-commercial purposes", "without
  charge", and "without the need to make an individual application" (Article 4);
- conditions may include acknowledging the source, not distorting "the original meaning or
  message", and the Commission's non-liability (Article 6(2)).

The Commission's legal notice licenses its website content under **CC BY 4.0** unless otherwise
indicated (search result, 2026-11-14; the notice itself and EUR-Lex's own legal notice **not
read** — EUR-Lex did not answer scripted requests).

What this means for the map:

- **Acknowledge the source** on every page and in every MCP answer: EUR-Lex / the Publications
  Office, with the link.
- **Do not distort**: a paraphrase always sits next to its citation, and the official text is
  what counts (vision).
- **Short quotations are allowed**; the map still points rather than copies.
- The map's own work (obligations, mappings, explanations) carries the project's licence (open
  question).

## 4. What this means for the pull

- **One source for machines: Cellar.** SPARQL for metadata, content negotiation for texts.
  EUR-Lex is for the links people follow.
- **The queries live in the repo**, one file per question (act metadata, relations, consolidated
  versions, acts based on it), and run on schedule.
- **Change signals**: `work_version` changes; a new consolidated version; a new amending act,
  corrigendum, or act based on it. Any of them opens a change for review and flags the act's
  hand-written fields (02, section 7).
- **Read the consolidated text, not only the metadata**, for dates and for which articles an
  amendment touched (the `▼M` markers).

## 5. Not checked

| Item | Why it matters | How to check |
| --- | --- | --- |
| EUR-Lex article anchors (`#art_N`) | Every citation link depends on them | Open a few in a browser |
| Article-level ELI URIs | A stabler citation than a EUR-Lex URL | Resolve in a browser; read the ELI documentation |
| EUR-Lex's own legal notice | The exact reuse wording for EUR-Lex content | Read it in a browser |
| Cellar rate limits and terms of service | The pull's schedule and politeness | Read the Publications Office's documentation |
| Formex XML | A richer structure than XHTML | Find the right content-negotiation type (`application/xml;type=fmx4` returned 404) |
| National measures data quality | The directive link in the national layer | Compare a few directives' measures with EUR-Lex's transposition page |
| Guidance outside the Official Journal | Where AI Act guidelines and the code of practice live | List the AI Office's published documents |
| Harmonised standards' references | Standard pointers | Find the Official Journal publications for the Machinery Regulation |

## 6. Decisions

Agreed by the operator on 2026-11-14:

1. **Licence.** The map's own work — records and explanations — under **CC BY 4.0**, as the EU
   licenses its own content; the code under **MIT**, as in the operator's other projects.
2. **Which text is read.** The latest consolidated version shows what applies now, but it says of
   itself: "This text is meant purely as a documentation tool and has no legal effect. The
   authentic versions of the relevant acts … are those published in the Official Journal" (read
   2026-11-14). So the map **reads the consolidated text, and cites each date and obligation
   twice**: to the consolidated version, and to the published act that set it — the original
   act, or the amending act named by the `▼M` marker.
