# 00 — Introduction

> **Status** · Draft v0.1 · 2026-11-14

*What the concept package is, what this project adds over the official sources, and the words
used throughout. Read first if any term below is new.*

## The concept package

| Doc | Read it for |
| --- | --- |
| [01 — Vision](01-vision.md) | Why this exists, for whom, what success looks like, what it is not |
| [02 — Project concept](02-project-concept.md) | What the map holds, the ways in, how a fact stays true |
| [03 — Data catalog](03-data-catalog.md) | Where every fact comes from |
| [04 — Architecture](04-architecture.md) | How it is built and run |
| [05 — Design system](05-design-system.md) | What it looks like and why |

## What this project adds over EUR-Lex and Cellar

The EU already publishes every act, as text for people ([EUR-Lex](#eur-lex)) and as data for
machines ([Cellar](#cellar)). This project is **not a better copy of them**. It has two layers:

**1. A base layer pulled from Cellar** — what Cellar already knows:

- identifiers, type, status, in force or not;
- relations: what amends what, corrigenda, consolidated versions, the acts and guidelines based
  on an act;
- the text, with an anchor on every article and paragraph — cited, never copied.

On its own, this layer would make the project a nicer EUR-Lex. It is the foundation, not the
point.

**2. Our own work** — what neither EUR-Lex nor Cellar has:

1. **Obligations.** Cellar knows the AI Act has an Article 9; it does not know that Article 9
   binds *providers* of *high-risk AI systems* from a given date. Breaking every article into
   who, what, from when and where is ours — and it is what makes a question like "what applies
   to a maker of an AI-enabled robot in 2027" answerable.
2. **The dates that apply, per part.** Cellar's date fields are those of the act as first
   published; the dates in force after amendments, and which part each one starts, are only in
   the wording of the consolidated text ([03](03-data-catalog.md#dates-which-part-applies-when)).
   We read them and turn them into data.
3. **Questions across acts.** EUR-Lex shows one act at a time, each in its own words. A small
   shared vocabulary of roles, product kinds and topics lets one question reach the AI Act, the
   Machinery Regulation, the Cyber Resilience Act and the GDPR together.
4. **Views for our audiences** — by role, by product, coming from outside the EU, a timeline.
5. **Explanations in plain words**, for founders rather than lawyers.
6. **Guidance outside the Official Journal** — documents from the Commission and the AI Office,
   codes of practice — which Cellar does not hold.
7. **An MCP interface** for agents, every answer cited.

Every piece of our own work points back into EUR-Lex and Cellar for its proof. The base layer
is the easy part; the obligations are most of the work (an estimate, not measured).

## Glossary

### The publishers and their systems

#### Publications Office of the European Union

The EU's official publisher. It publishes the [Official Journal](#official-journal) and runs
[EUR-Lex](#eur-lex) and [Cellar](#cellar) on the same data.

#### Official Journal

The EU's official gazette (OJ). An act is adopted when it is published here; the OJ edition is
the legally valid text. Its *L series* carries legislation, its *C series* information and
notices (where many Commission guidelines appear).

#### EUR-Lex

`eur-lex.europa.eu` — the Publications Office's website for people: search an act, read it in any
of the 24 official languages, see what amends it and its consolidated versions. **The link a
reader of this map follows to check a fact.** It does not answer scripted requests, so the
project's programs do not read it ([03](03-data-catalog.md#1-the-sources)).

#### Cellar

The Publications Office's database behind EUR-Lex, built for machines. It holds every act as
*linked data* — each act a node with properties (number, dates, type) and links to other acts —
and the texts themselves. Two doors:

- a **SPARQL endpoint** (`publications.europa.eu/webapi/rdf/sparql`) for structured questions;
- **text download** by act number (`publications.europa.eu/resource/celex/…`), returning the
  full text as structured XHTML with an anchor on every article, paragraph and annex.

Open, no login (checked 2026-11-14). **The project's machine source.**

#### SPARQL

The query language for linked data, as SQL is for tables. A SPARQL query to Cellar reads, for
example, "for act 32024R1689, give its dates and every act that amends it".

### Identifiers

#### CELEX

EUR-Lex's identifier for every document. `32024R1689` reads: sector `3` (legislation), year
`2024`, type `R` (regulation; `L` directive, `D` decision), number `1689` — the AI Act. A
consolidated version starts with `0` and ends with its date: `02024R1689-20260727`.

#### ELI

European Legislation Identifier — a readable, permanent web address for an act:
`http://data.europa.eu/eli/reg/2024/1689/oj`. Stored with every act.

### Kinds of act

#### Regulation

Binding in its entirety and directly applicable in every member state, without national law in
between. The AI Act, GDPR, Data Act, Machinery Regulation and Cyber Resilience Act are
regulations.

#### Directive

Binding as to the result to achieve; each member state writes its own law to reach it (see
[transposition](#transposition)). The Product Liability Directive and NIS2 are directives.

#### Delegated act and implementing act

Acts the Commission adopts under powers an act gives it. A **delegated act** amends or adds to
non-essential parts of the act (for example updating an annex). An **implementing act** sets
uniform conditions for applying it (for example how a procedure runs). Both are binding and
published in the Official Journal. The AI Act's include Implementing Regulation (EU) 2025/454 on
the scientific panel.

#### Amending act

An act that changes another. The Digital Omnibus on AI, Regulation (EU) 2026/1744, amends the AI
Act, Regulation (EU) 2018/1139 and the Machinery Regulation.

#### Corrigendum

An official correction of errors in a published act. The AI Act has four (read 2026-11-14).

#### Consolidated version

An act with all its amendments and corrigenda merged in, to read its current state in one
place. It says of itself that it is "purely a documentation tool and has no legal effect": the
authentic texts are the original and amending acts in the Official Journal. In its text, `▼B`
marks the original and `▼M1`, `▼M2` … each amendment, with a link to the act that made it.

#### Transposition

A member state turning a directive into its own national law, by a deadline the directive sets.
The national laws are *national implementing measures*. Out of the map at first (vision).

### Beside the acts

#### Guidelines

Documents from the Commission (or an authority such as a data-protection board) on how it reads
an act. Not binding, but they show how it will be applied. Some are published in the Official
Journal's C series (the AI Act's Article 50 transparency guidelines, 2026-11-12), some only on
Commission pages. In the map, marked *non-binding*.

#### Code of practice

A voluntary set of commitments that is one way to show compliance — for example the
general-purpose AI code of practice under the AI Act. In the map, marked *voluntary*.

#### Harmonised standard

A European standard (CEN, CENELEC, ETSI) made at the Commission's request. When its reference is
published in the Official Journal, following it gives a *presumption of conformity* with the act
it serves. The texts are sold, not published; in the map, pointers only.

#### Conformity assessment and CE marking

The procedure by which a maker shows a product meets an act's requirements — by itself or with a
*notified body* (an independent organisation designated by a member state) — after which it
affixes the **CE marking** and may sell the product in the EU.

### Roles the acts use

#### Provider, deployer

AI Act: the **provider** develops an AI system or model and places it on the market under its
own name; the **deployer** uses an AI system in its own activity.

#### Manufacturer, importer, distributor, authorised representative

Product acts (Machinery Regulation, Cyber Resilience Act and others): the **manufacturer** makes
a product or has it made and markets it under its name; the **importer** places a product from
outside the EU on the EU market; the **distributor** makes it available further down the chain;
the **authorised representative** is an EU-based party a non-EU manufacturer appoints to act for
it.

#### Controller, processor

GDPR: the **controller** decides why and how personal data is processed; the **processor**
processes it on the controller's behalf.

#### Data holder, user

Data Act: the **data holder** has the right or obligation to make available data generated by a
connected product or service; the **user** owns or uses that product.

### This project's own terms

#### Record

A structured, sourced, dated entry in the map: an act, article, obligation, date, relation,
guidance or standard pointer ([02](02-project-concept.md#2-what-is-in-the-map)).

#### Obligation

One duty, on one role, for one kind of product or system, from one date, in one place in the
text. The unit of an answer.

#### Shared vocabulary

The project's small set of roles, product kinds and topics that maps each act's own words, so a
question can reach across acts. Our work, not the law's; the act's own term is always shown.

#### Pull

The scheduled job that reads Cellar and proposes changes to the map's machine fields for review.

#### MCP

Model Context Protocol — an open protocol through which an AI agent calls tools on a server. The
map's MCP server lets a user's own agent ask it questions and get cited answers.

---

Definitions of roles and kinds of act are summaries for orientation, written from the operator's
and the author's understanding; each is checked against the act's own definitions article when
that act's record is written.
