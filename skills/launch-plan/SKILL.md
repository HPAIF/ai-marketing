---
name: launch-plan
description: Plan a product or feature launch — pick the launch tier, define goal, audience and message, list the assets and channels, assign owners and dates, and set the success measures and post-launch review. Writes a launch plan in ai-team/marketing/research/ and the obligations it creates. Draft only — the founder runs the launch. Use for "we're launching X", "plan the launch", "what do we need for launch day".
---

# launch-plan

Frameworks: **launch tiers** (tier 1: new product or market, aims at new pipeline — full plan;
tier 2: significant feature or integration — lighter plan; tier 3: small change — release note
and customer notice; default to tier 2 when unsure), the positioning and message house, and
**Bullseye** channel results. Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: product file, `positioning.md`, `icp.md`, `channels.md`, `content-plan.md`,
   `claims.md`, decisions, obligations; `ai-team/product/` (scope and date) and `ai-team/sales/`
   (who in the pipeline cares) when those members exist.
2. **Facts first** — confirm with the founder (or the `product` member's files) what exactly
   ships, when, for whom and what is **not** included. Unreleased details stay confidential
   until the founder says they may be public (rule 7).
3. **Tier** — propose a tier with the reason; the founder decides (→ decision row).
4. **Plan** from `${CLAUDE_PLUGIN_ROOT}/templates/launch-plan.md` →
   `ai-team/marketing/research/LP-XXXX-slug.md`: goal and measures, audience (existing
   customers / ICP prospects / wider market), message (what's new → why it matters → proof →
   CTA), assets per tier (release note, landing section, email, posts, demo video script,
   sales one-pager, FAQ), channels, owners, dates (T-minus timeline), risks, post-launch review
   date.
5. **Checks** — every asset goes through `copywriting` (claims and lawyer checks). Hand-offs:
   `lawyer` (claims, terms or privacy changes), `cto`/`security` (technical and security
   claims), `sales` (enablement, which deals to tell), `accountant` (new pricing or promotions),
   `product` (scope and date).
6. **Calendar** — launch date and each task with a date → obligations (`deadline` for the launch
   date, `action` for tasks, `approval` for drafts). Add the content to `content-plan.md`.
7. **Never launch anything yourself**: no posting, sending, scheduling or ad buying. The plan
   names the founder (or the person they choose) as the one who publishes.
8. `ai-marketing:log-job`.
