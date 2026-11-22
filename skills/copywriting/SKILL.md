---
name: copywriting
description: Draft marketing copy — website and landing pages, headlines, product pages, blog articles, social posts, newsletters and marketing emails, one-pagers, ads copy — from the positioning, with every claim checked and recorded, and legal questions flagged to the lawyer. Saves a draft in ai-team/marketing/drafts/ for the founder to approve and publish. Never publishes. Use for any "write / rewrite / draft" marketing request.
---

# copywriting

Frameworks: **StoryBrand** for website and landing structure (customer as hero, clear problem,
guide, three-step plan, direct call to action, stakes, success), **AIDA** for the flow of a piece
(attention → interest → desire → action), and the message house in `positioning.md` for words
and proof. Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: `positioning.md`, `icp.md` (persona and content language), `claims.md`,
   related drafts, decisions (tone of voice), active lessons, and the content-plan item if this
   draft comes from one.
2. **Brief** — write down: goal, persona, stage (AIDA), channel and format, one call to action,
   length limits, language. Ask the founder one question if a missing fact changes the draft.
3. **Structure** — website/landing: hero (what it is, for whom, outcome) → problem → guide
   (empathy + proof) → plan (3 steps) → CTA → stakes and success → proof → FAQ. Other formats:
   AIDA flow. Keep sentences short and in the customer's words.
4. **Write the draft** from `${CLAUDE_PLUGIN_ROOT}/templates/draft.md` →
   `ai-team/marketing/drafts/DR-XXXX-slug.md` (next free number), `status: draft`. Where a fact
   is missing write `[FACT NEEDED: …]` — never fill it with an invented number, customer or
   quote.
5. **Claims check** — list every factual claim in the draft's claims table and in `claims.md`:
   - source or company fact found → `ok` (record link/file and date);
   - nothing found → `needs-source`; rewrite or remove it before the draft can be `ready`;
   - comparative, superlative, numeric, testimonial/logo/case study, security/compliance,
     regulated sector, contest or discount → `needs-lawyer` with the exact question for the
     lawyer (rule 3). Marketing emails and newsletters also get a lawyer check on consent,
     sender identification and opt-out for the target market.
6. **Status** — set `ready` only when no claim is `needs-source` and every `needs-lawyer` claim
   has an answer (or the founder has decided after being told no lawyer member is installed).
   Otherwise keep `draft` and say what blocks it.
7. **Hand back** — show the draft, the claims table and what the founder must do to publish
   (where, when, which account). You never publish, post, send, schedule or upload it.
8. `ai-marketing:log-job` — draft status, claims, `approval` obligation for `ready` drafts,
   hand-off questions for the lawyer.
