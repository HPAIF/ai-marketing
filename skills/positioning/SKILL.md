---
name: positioning
description: Work out or revise the company's positioning and messaging — competitive alternatives, unique attributes, value, best-fit customers, market category (April Dunford's components, in order) — then a message house and a StoryBrand-style story. Writes ai-team/marketing/positioning.md and its claims. Use for "how should we describe ourselves", "what's our positioning/one-liner/pitch", "rewrite our messaging", or before a launch or website rewrite.
---

# positioning

Frameworks: **April Dunford's positioning components** (worked in order: competitive alternatives
→ unique attributes → value → best-fit customers → market category, plus a trend only if real),
a **message house** (one-liner, pitch, three pillars with proof) and the **StoryBrand** seven
parts (the customer is the hero, the company is the guide). Prefer the components to
fill-in-the-blank positioning statements. Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: company profile and product file, `icp.md`, current `positioning.md`,
   `claims.md`, decisions, sales evidence (`ai-team/sales/` discovery and lost-deal notes) and
   active lessons.
2. **Competitive alternatives** — what best-fit customers would really do without the product,
   including spreadsheets, an agency, an in-house hire or doing nothing. Use public sources for
   competitors (their own pages, docs, pricing pages, public reviews), cite link and date, and
   describe them fairly. Customers' words beat your guesses.
3. **Unique attributes** — capabilities the alternatives lack. Each one must be true today
   (check the product file; ask `product` / `cto` for anything technical). Roadmap is not an
   attribute.
4. **Value** — for each attribute, "so what?" for the customer, with proof (a customer result,
   a demo, a measurable difference). Each proof → a row in `claims.md` with its source.
5. **Best-fit customers** — who cares most about that value; check against `icp.md` and propose
   ICP changes through `icp-personas` if they differ.
6. **Market category** — the frame that makes the value obvious to those customers. Prefer an
   existing category buyers already understand; a new category needs strong reasons and budget.
7. **Message house and story** — one-liner, ≤ 50-word pitch, three pillars with proof points;
   the seven StoryBrand parts; words to use and avoid. No superlatives without proof (rule 2).
8. **Claims and lawyer** — any comparative, superlative or numeric claim → `claims.md` with
   status `needs-lawyer` and the exact question, asked directly (RULES: "Ask colleagues directly"), for the lawyer (rule 3).
9. **Show the founder** two options where a real choice exists (e.g. two categories), with the
   trade-off. Write the chosen version to `positioning.md` with a new version number and date;
   mark it `hypothesis` until tested with customers.
10. `ai-marketing:log-job` — decision row, claims, obligations (test with N customers, update the
    website), hand-off notes for sales (new pitch and objection answers).
