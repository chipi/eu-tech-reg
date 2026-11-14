# 02 — Project concept

> **Status** · Draft v0.2 · 2026-11-14 — written from the [vision](01-vision.md) v0.3, with the
> operator's answers. No open questions left.

*What the map is at the idea level: what it holds, how a question finds its answer, and how it
stays true. Read this to understand the whole project end to end.*

The vision (`01`) says why this exists and for whom. The data catalog (`03`) will say where each
fact comes from; the architecture (`04`) how it is built. This document is the middle: the things
in the map, the ways in, and the life of a fact.

---

## 1. The structuring idea

**Everything in the map is a record, and every record points to the official text.**

A founder's question — *what applies to us, from when, where does it say so* — is answered by
walking down a ladder:

```text
act ─┬─ article ─── obligation      who, what, from when, where it says so
     ├─ date                         when each part applies
     ├─ relation                     amends, is amended by, implements, refers to
     └─ beside it: delegated and implementing acts, guidelines, codes of practice,
                   standards (pointers only)
```

The **obligation** is the unit of an answer. An act is too coarse ("the AI Act applies to you"
answers nothing); an article is the unit of citation, but one article can bind several roles
from several dates. An obligation is one duty, on one role, for one kind of product or system,
from one date, in one place in the text.

Two kinds of content, never mixed:

- **Records** — structured, sourced, dated facts. What the map *serves*.
- **Explanations** — one plain-words page per act, written while learning it. What the map
  *teaches*. An explanation links to the records it relies on; it adds no fact of its own.

## 2. What is in the map

| Record | What it holds | Example (illustrative, unchecked) |
| --- | --- | --- |
| **Act** | Identifiers (CELEX, ELI), title, short name, type (regulation, directive, delegated act …), status (proposal, in force, repealed, withdrawn), area, the roles it uses, territorial reach | AI Act, Regulation (EU) 2024/1689 |
| **Article** | Number, title, the act it sits in, its EUR-Lex anchor; annexes are articles too | Article 9, risk management system |
| **Obligation** | The duty in a short paraphrase, the role it binds, the product or system it applies to, conditions, the date it applies from, the article(s) | "Providers of high-risk AI systems maintain a risk management system" |
| **Date** | A date when a part of an act starts to apply, with the parts it covers | "the rules on general-purpose AI models apply from …" |
| **Relation** | Act to act: amends, is amended by, implements, repeals, refers to, is proposed to change | Digital Omnibus on AI, Regulation (EU) 2026/1744 → amends → AI Act |
| **Guidance** | A delegated or implementing act, a guideline, a code of practice: what it concerns, its binding force (binding / non-binding / voluntary), the act and articles it serves | The general-purpose AI code of practice — voluntary — AI Act |
| **Standard pointer** | Number, title, the act it serves, when it was cited in the Official Journal, where to buy it; nothing about its content | EN ISO 10218 — Machinery Regulation |

**Every record** carries (one provenance block for the record, a field-level block only where a
field's source differs — 04, decision 1):

- **a citation** — the EUR-Lex link, down to the article where it applies;
- **a read date** — when the source was last read;
- **a state** — `checked` (read against the source), `unchecked` (written but not yet read
  against the source), or `machine` (pulled from EUR-Lex metadata by the scheduled job);
- **an owner** — `machine` fields are the pull's to update; everything else is written by hand
  and changed only through review.

A record that is `unchecked` is **not shown at all** — not on the site, not over MCP; the page
shows the gap instead ("not yet broken down", "not yet read"), and an MCP answer lists it under
*not covered*. Each act record also carries its pass state (02 §8: structure done, obligations
done), so "not yet broken down" is data, not prose.

## 3. The shared vocabulary

The acts do not share their words. The AI Act speaks of *providers* and *deployers*, the
Machinery Regulation of *manufacturers*, the GDPR of *controllers* and *processors*, the Data Act
of *data holders* and *users*. A startup is often several at once. The map keeps each act's own
words — they are what the text says — and adds a small shared vocabulary on top, so that one
question reaches across acts.

- **Roles** — each act's roles, mapped to a few shared ones: *makes it*, *puts their name on
  it*, *brings it into the EU*, *sells it on*, *uses it in their business*, *handles personal
  data*, *holds the data it generates*, *represents a non-EU company*.
- **Products and systems** — each act's categories (AI system, general-purpose AI model,
  high-risk AI system, machinery, product with digital elements, connected product, radio
  equipment …), mapped to shared kinds: *software*, *AI model*, *AI-enabled product*, *robot or
  machine*, *connected device*, *online service*.
- **Topics** — safety, cybersecurity, personal data, data sharing, transparency, liability,
  market access, export.

The mapping is the map's own work, not the law's. It is marked as such, every mapping links to
the definitions it rests on, and an answer always reports the act's own term next to the shared
one ("*makes it*: *provider* in the AI Act, Article 3; *manufacturer* in the Machinery
Regulation, Article 3"), never which one the asker is.

**Kept as small as possible; growth is expected** (operator, 2026-11-14) — every new domain
brings its own words. The rule: a shared term is added only when at least two acts need it, and
each term links to the definitions it rests on.

## 4. The explanation

One page per act, for a founder rather than a lawyer, written while learning the act. The same
shape every time:

1. **What it is for** — the problem the act addresses, in two sentences.
2. **Who it reaches** — its roles, in plain words, and whether it reaches companies outside the
   EU.
3. **What it asks** — the obligations, grouped by role, each linked to its record.
4. **When** — the dates, as a short timeline.
5. **How it connects** — the acts it amends, relies on or overlaps with, and the guidance beside
   it.
6. **What is moving** — proposals and pending changes, with their status.
7. **What this page does not cover** — national rules, standards' content, anything unchecked.

The explanation is where the operator's learning shows: it is written in the operator's words,
reviewed, and every sentence that states a fact links to a record.

## 5. The ways in

### On the web: browse

- **One page per act** — the explanation, then its records: articles, obligations, dates,
  relations, guidance.
- **Views** generated from the records:
  - *by role* — "what applies to someone who makes a robot";
  - *by product* — "what applies to an AI-enabled machine";
  - *by date* — a timeline of what starts when;
  - *by relation* — a map of what amends, implements and refers to what;
  - *coming from outside the EU* — reach, representatives, who carries the duty in the EU.
- **Search** — the site's own search over every page.

### For agents: MCP

People connect their own agent; the map serves cited facts and the agent reasons over them.
First tools:

| Tool | Answers |
| --- | --- |
| `find_acts(topic?, role?, product?)` | Which acts touch this |
| `get_act(id)` | One act's record |
| `get_obligations(act?, role?, product?, date?)` | The obligations matching a profile on a date |
| `what_applies(role, product, date, act?, established_in_eu?)` | The acts and obligations for a profile on a date, across acts |
| `timeline(from, to, act?)` | The dates in a window |
| `related(id)` | What amends, implements, refers to, or is proposed to change an act |
| `get_guidance(act, article?)` | Delegated acts, guidelines, codes of practice and standard pointers for an act |

**Every answer has the same envelope:**

- the facts, each with its **provenance and two links**: the official text on EUR-Lex, and a
  permalink back to the map's own page for that record (operator, 2026-11-14) — so whatever an
  agent passes on carries its proof and its way back here
  ([04, section 5](04-architecture.md#5-the-mcp-server));
- **what this answer does not cover** (unchecked fields left out, national rules, the content of
  standards);
- the notices: *information from the official sources, not legal advice; the official text and
  your counsel are what count*; *independent, not affiliated with the European Union*;
- the attribution line, the same string everywhere: *"Source: EU Tech Reg, eutechreg.eu (CC BY 4.0),
  built from EUR-Lex."* (the records are CC BY 4.0).

**This section is the one definition of the MCP tools and the answer envelope**; 04, the UXS
documents, the guide and the mockup follow it.

## 5a. Syntheses — the third kind of content

Agreed by the operator on 2026-11-14. Besides **records** (facts) and **explanations** (plain words
per act), the map publishes **syntheses**: short reads per act, per worked example, and where the
two meet (the matrix, [UXS-013](../uxs/UXS-013-synthesized-reads.md)). They are EU Tech Reg's
**interpretation**, and nothing about them may be mistaken for the law or for advice:

- **Labelled on every screen** as *synthesis · EU Tech Reg's interpretation*, with the review and
  the map version; records and quotes inside a read look different from the interpretation.
- **Built only from the map's records** — offline, from a versioned brief per read, never from a
  model's memory; every statement links to its record and article, and the read ends with its
  citations.
- **No do's and don'ts.** The allowed sections are *what the texts ask of companies like this*,
  *questions to bring to counsel* and *common misreadings*.
- **Reviewed by the legal advisor** (`.claude/agents/legal-advisor.md`) before it is published;
  a read it does not pass is not published.
- **Kept true**: when a record a read rests on changes, the read is flagged and re-reviewed.
- **Figures where a picture replaces a page**, built from the records
  ([candidates](../wip/FIGURES.md)).

## 6. Questions the map is built to answer

| Who asks | Example |
| --- | --- |
| Founder | What applies to our AI-enabled robot from our launch date? Which of it is about cybersecurity? What changes in the next 24 months? |
| Investor | Which acts reach a company with this product? What lands before the next round? What is still moving? |
| Company coming to the EU | Do these acts reach us with no EU presence? Do we need a representative? What must be in place before the first sale? |
| Curious mind | How does the AI Act relate to the GDPR? What did the Digital Omnibus change? |
| Agent | All of the above, with citations it can pass on |

The answer is always a list of what the texts say, to whom, from when, and where. It is never a
judgment about the asker's situation (vision: *information, not advice*).

## 7. How a fact stays true

```text
EUR-Lex / Cellar ──(scheduled pull)──▶ machine fields ──▶ change proposed ──▶ review ──▶ merged
hand-written fields ─────────────────────────────────────▶ change proposed ──▶ review ──▶ merged
                                                                                 │
                                         read date older than N days ──▶ flagged for re-reading
```

- **The pull owns metadata**: identifiers, status, dates of entry into force and application,
  amendments, corrigenda, consolidated versions. When one changes, the pull proposes a change
  with the old value, the new value and the link. It never merges by itself.
- **People own the rest**: obligations, mappings, explanations, guidance summaries. When the pull
  changes an act (a new consolidated version, an amendment), every hand-written field on that act
  is flagged for re-reading.
- **Staleness is visible**: each field shows its read date, and a field due for re-reading is
  flagged (below).

### Flagged for re-reading (agreed, operator, 2026-11-14)

**What triggers a flag:**

| Trigger | Applies to | Marker |
| --- | --- | --- |
| The pull finds the act changed (amendment, corrigendum, new consolidated version) | Every hand-written field on that act, at once | *the act changed after this was read* |
| Age: read more than **180 days** ago | Hand-written fields on stable acts | *due for re-checking* |
| Age: read more than **30 days** ago | Anything in motion: proposals, pending amendments, dates still moving | *due for re-checking* |
| The pull has failed for more than **7 days** | Machine fields | *metadata not refreshed since …* |

A change in the law is the real reason a fact goes stale, and the pull sees it; age is the
backstop for what the pull cannot see (a new guideline, a reading that was wrong).

**Who sees it:**

- **Readers on the site** — the marker next to the field, with its read date.
- **Agents over MCP** — the same marker in the answer, so the agent can tell its user.
- **The maintainer** — a generated *re-reading queue* page on the site, listing every flagged
  field, oldest first.

**Is it still served?** Yes, with the marker. An `unchecked` field is never served; a flagged one
is, because nothing says it is wrong — only that it is old.

**What happens next:** someone re-reads the field against the source. Unchanged: only the read
date moves. Changed: the field is corrected and the read date set. Either way through review, and
the flag clears.

## 8. When an act is done

An act is done when:

1. its record is complete and every field is `checked` or `machine`;
2. every article and annex is in and marked *carries obligations* or *carries none*, and every
   article that carries one is broken down into obligations, each with role, product, date and
   citation (full depth, two passes, below);
3. its guidance and standard pointers are in;
4. its explanation is written and reviewed;
5. its MCP answers return it correctly, with citations (a test per tool);
6. the views include it.

Until then its page says *in progress* and lists what is missing.

### Full depth, in two passes (agreed, operator, 2026-11-14)

1. **Structure** — list every article and annex; mark each *carries obligations*, *carries none*
   or *not read yet*.
2. **Obligations** — break down every article that carries one; until it is done the article
   says *not yet broken down*.

Not "the duties a startup is likely to meet first": choosing those is a judgment about the
asker's situation — close to advice — and it leaves gaps nobody can see. The two passes keep the
gaps visible while the work is under way.

## 9. Phase 1

**Mockup first, then build** (operator, 2026-11-14). Before any building, a mockup of the site
and the MCP answers nails down the approach: what an act page, a view and a cited answer look
like, with real AI Act content.

Then phase 1 builds the whole path for **the AI Act**, first of the vision's first acts, end to
end: record format, the act done (section 8), its page, the MCP server answering for it, the pull
for its metadata. **The first pass then adds the GDPR, the Data Act and the Cyber Resilience Act**
(operator, 2026-11-14: AI, data and cyber together), and the cross-act views, which only become
useful with more than one act. The Machinery Regulation and the Product Liability Directive follow.

The AI Act is the largest of the six — 113 articles, 13 annexes and 180 recitals as published
(counted in the Cellar text, 2026-11-14; the consolidated text of 2026-07-27 has 119 article
anchors after the Digital Omnibus on AI) — so phase 1 is the longest single act; the two passes
(section 8) keep it visible while it is under way.

## 10. Honest limits

- **Paraphrase is interpretation.** An obligation's short wording is ours; the citation is what
  makes it checkable. The map can be wrong in the paraphrase and right in the link — that is why
  the link is mandatory.
- **The shared vocabulary is ours.** Mapping *provider* and *manufacturer* to *makes it* helps a
  question reach across acts, but it is a simplification; the act's own term is always shown.
- **Applicability often hinges on facts the map cannot see** (is this system high-risk? is this
  company an important entity?). The map gives the test and where it is written; the asker
  applies it.
- **English only** (operator, 2026-11-14), with links to every language version on EUR-Lex; the
  texts exist in 24 languages and all are equally authentic.
- **Standards are pointers only**; their content is sold, not published.
- **National law is out at first**, apart from the link to transposition measures for
  directives.

## 11. Open questions

None left. Settled by the operator on 2026-11-14: the AI Act first (vision), full depth in two
passes (section 8), the shared vocabulary kept small with growth expected, English only with
links to every language version, and the flagging rules (section 7).
