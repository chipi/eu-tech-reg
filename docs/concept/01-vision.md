# 01 — Vision

> **Status** · Draft v0.3 · 2026-11-14 — v0.1 written from [the idea](../wip/IDEA.md); v0.2 and
> v0.3 take the operator's answers on motivation, audience, depth, the bet, how people reach it,
> the advice line and scope. No open questions left.

*An open map of EU tech regulation for AI and robotics startups: every answer cites the article it
comes from.*

## Why we are here

EU regulation is complex: a kingdom of bureaucracy, dozens of acts, each with its own annexes,
delegated acts, guidelines and dates, spread over thousands of pages. For a founder with a robot
or a model and a small team, it reads as a wall. Many give up before they start, build elsewhere,
or pay for advice they cannot yet afford just to learn what applies.

That is a problem technology and AI can solve. The law is public, and EUR-Lex publishes it as
data; what is hard is finding the way through it, not the law being secret.

So we invert it. Instead of the founder digging through the bureaucracy, the map brings what they
need to them: easy access in plain words, and agentic support — their agent asks, the map answers,
with the article to show for it. The point is courage: that people building in Europe do not give
up, and find what they need to go ahead.

## The question

What applies to us, from when, and where exactly does it say so? A startup putting an AI system
or a robot on the EU market meets the AI Act, the Machinery Regulation, the Cyber Resilience Act,
the GDPR, the Data Act and product liability at once — and, depending on what it builds, radio,
drones, medical devices, vehicles, export controls. Each act has its own roles (manufacturer,
provider, deployer, importer, distributor, controller), its own dates, and amendments in motion.
An investor doing due diligence asks the same question from the other side: what exposure does
this company carry, and what lands in the next two years? A company from the US or elsewhere
coming to Europe asks it from outside: do these rules reach us before we have anyone here, what
must we put in place to sell, and where do we stand?

The official texts are all on EUR-Lex. What is missing is a way to see them side by side, down to
the article, in plain words, with every answer carrying the citation that backs it.

## The premise

The texts do not need copying; they need a map. Each act is a structured record that goes all the
way down: the act, its articles, and the obligations in them — who each obligation binds, for
which products or systems, from which date — every one pointing to its article on EUR-Lex with the
date it was read. Beside each act sits an explanation in plain words, for a founder rather than a
lawyer.

Because the records are data, the same facts reach people and agents two ways (operator,
2026-11-14):

- **On the web, people browse**: one page per act, views by role, product and date, a timeline
  and a relation map, and the site's search.
- **For agentic use, people connect their own agent over MCP.** The map serves structured,
  cited facts; the reasoning over them is the user's agent's. There is no model on our side
  turning questions into answers.

Either way, everything carries its citation: a fact without one is not served. A scheduled job
keeps the machine-readable parts current from EUR-Lex.

**We help find information; we do not give legal advice** (operator, 2026-11-14). The map reports
what a text says, to whom, from when, and where — "Article N requires providers of high-risk AI
systems to …". It never assesses a reader's own situation ("you must", "you are compliant", "you
are out of scope"). That judgment belongs to the reader and their counsel, and every page and
every MCP answer says so.

## What this looks like

A founder building a warehouse robot with an on-board vision model asks their agent, connected to
the map over MCP: *"what do I need before we sell in Germany in 2027?"* The agent finds the acts
that apply to a manufacturer of machinery with an AI safety component and a network connection,
the obligations in each that are in force on that date — conformity assessment, technical
documentation, vulnerability handling, CE marking — and for every line the article, its EUR-Lex
link and the date it was read. It says what the map does not cover (national rules, harmonised
standards behind a paywall) and that this is information, not legal advice. The founder's
co-founder, without an agent, gets to the same place on the site: browse by role, by product, by
date.

An investor reading a data room asks their agent the same question about a company. The agent
calls `what_applies(role, product, date)` and `timeline(from, to)` over MCP, gets the same cited
answers, and puts the citations in its memo.

A US company with an AI hiring tool plans its EU launch. Its agent asks which acts reach a
provider established outside the EU, which roles it would hold (provider, and controller for the
applicants' data), whether it needs a representative in the EU, and what applies from its launch
date. It gets its position as a list of cited obligations it can take to counsel, instead of a
blank page.

A curious reader opens the site, follows the timeline to see what starts in 2027, and the relation
map to see what the Digital Omnibus would change in the AI Act. When a date moves on EUR-Lex, a
change waits for review with the old value, the new one and the link — nobody has to notice first.

## Why this earns existence

**The questions are real and repeated.** Every AI or robotics startup, and every investor looking
at one, asks what applies and when. Today the answers live in law-firm PDFs, paid advice and
commentary that does not cite the article.

**What exists is prose, not data.** Law-firm handbooks, IAPP maps, trackers and the Bruegel dataset
(a PDF with no licence stated) explain the acts; none of them, as read on 2026-11-14, is open,
article-level data with official identifiers, role- and date-based views and an agent interface
([what exists](../wip/IDEA.md#what-exists-read-2026-11-14)).

**The source is machine-readable.** EUR-Lex and the Publications Office's Cellar publish metadata
and structured texts for every act, so records can be checked and kept current rather than kept
by hand.

**Agents need something to cite.** An agent asked about EU law answers from memory unless it has a
source it can quote. A map built for MCP from the start gives it one.

## Who it is for

1. **Founders of AI and robotics startups** — what applies to what we build, from when, and what
   we must do.
2. **Investors** — what exposure a company carries and what lands in the next years.
3. **Companies coming to the EU** — from the US and elsewhere: which rules reach them from
   outside, what they must put in place to enter, and where they stand.
4. **Curious minds** — anyone learning how the EU regulates technology.
5. **Their agents** — consulting the map over MCP, with citations they can pass on.

## What success looks like

- A founder answers "what applies to us, from when" in minutes, and every line of the answer links
  to an article.
- A company outside the EU assesses its position before entering — which acts reach it, which
  roles it holds, what it must set up — from cited answers.
- Agents use the MCP server and cite it; no answer leaves without a citation.
- Others reuse the records as a dataset under an open licence.
- A date or amendment change on EUR-Lex shows up here as a change to review, without anyone having
  to notice it first.
- Each act has a plain-words page written while learning it, and the method for doing that is
  written down so it can be repeated for another body of law.

## What this is not

| Not a… | Because… |
| --- | --- |
| **Legal advice, or a legal advisory** | It helps find information: what the text says and where. It never assesses your situation; the official text and your counsel are what count. Said on every page and in every answer. |
| **A chatbot** | On the web you browse; for questions in words you bring your own agent over MCP. |
| **A copy of the texts** | It links to EUR-Lex and quotes only short passages where needed. |
| **An answer without a source** | If the map cannot cite it, it does not say it. |
| **A news feed** | It records the state of the law and changes to it, not commentary. |
| **A compliance tool** | It tells you what applies and where it says so; it does not run your conformity assessment. |

## The deeper bet

All three, in this order of proof:

1. **A dataset others reuse** — open, article-level records of EU tech regulation with official
   identifiers.
2. **A reference agents rely on** — the place an agent goes to answer an EU-regulation question
   with a citation.
3. **A method for learning any body of law** — the record format, the EUR-Lex pull and the
   learn-while-writing explanations, repeatable beyond tech regulation.

## Principles

- **Cite or stay silent**: every answer carries the article, its link and the date it was read.
- **Point, don't copy.**
- **Every fact sourced and dated**; unchecked fields marked as such.
- **Information, not advice**: report what the text says and where; never judge the reader's
  situation. Said everywhere.
- **Small pieces**: an act is done when its record, its page and its MCP answers are complete.
- **Machines keep the metadata current; people review what is written by hand.**

## Scope

All agreed by the operator on 2026-11-14.

### The core

**AI, data and robotics** are the core: the acts in those areas come first and go deepest.
Everything else in the [candidate scope](../wip/SCOPE.md) — sector rules, platforms, trade and
investment — is added around that core.

### First acts

1. AI Act
2. GDPR
3. Data Act
4. Machinery Regulation
5. Cyber Resilience Act
6. Product Liability Directive

Then the Data Governance Act and the Radio Equipment Directive. NIS2, in the
[first idea](../wip/IDEA.md), moves out of the first wave: it binds organisations that are
essential or important entities, not products, so it comes with the wider scope.

### Beyond the acts

An act often says *what* must be achieved; other official documents say *how*, and a founder
needs both. The map holds four layers beside the acts:

| Layer | Example | In the map as |
| --- | --- | --- |
| **Delegated and implementing acts** | The Radio Equipment Directive's delegated act making cybersecurity mandatory for wireless devices | Records, like the acts — binding, on EUR-Lex, same pipeline |
| **Commission guidelines and authorities' guidance** | The AI Act guidelines on the AI-system definition; data-protection board guidelines | Records, marked **non-binding** |
| **Codes of practice** | The general-purpose AI code of practice | Records, marked **voluntary** |
| **Harmonised standards** | EN ISO 10218 for industrial robots | **Pointers only** — number, title, which act, when cited in the Official Journal; the texts are sold, not published |

### National layer

Out at first, with one link. Most of the core are regulations, which apply directly in every
member state; the gap is mainly directives (the Product Liability Directive in the first wave),
which each state transposes. For a directive, the record says so and links to the national
transposition measures EUR-Lex lists (believed to exist for every directive; checked when the
first directive's record is written). National authorities and sandboxes come later.

## Open questions for the vision

None left at v0.3. What comes next is the [concept](index.md): the record format, the sources,
the architecture.
