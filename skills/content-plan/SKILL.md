---
name: content-plan
description: Build or refresh the content plan — themes from the ICP's jobs and the positioning pillars, formats and channels the personas actually use, a dated calendar, and what each piece asks the reader to do. Writes ai-team/marketing/content-plan.md. Use for "what should we post/write", "content calendar", "plan next month's content", or after a positioning change.
---

# content-plan

Frameworks: **jobs to be done** and personas for topics, the **AIDA** stages (attention →
interest → desire → action) to balance the plan across the funnel, and the **Bullseye** channel
results in `channels.md` to pick where content goes. Early-stage B2B content is usually
founder-led and narrow: a few formats done well on the channel the ICP already uses.
Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: `icp.md`, `positioning.md`, `channels.md`, `content-plan.md`, `claims.md`,
   recent drafts and their status, decisions, sales evidence (frequent questions and objections
   in `ai-team/sales/`), active lessons.
2. **Capacity** — ask (or read from decisions) how many hours a week the founder can give to
   content. Plan to that, not to an ideal.
3. **Themes** — 3–5 themes, each tied to a persona's job or pain and a positioning pillar. Use
   public research for what the ICP searches for and discusses (search the topic and role,
   never the company's private facts).
4. **Mix** — map themes to AIDA stages so the plan is not all awareness or all product pitch;
   include proof content (case studies only with the customer's permission — rule 3).
5. **Calendar** — 4–8 weeks of items: date, title/angle, format, channel, persona, CTA. Keep
   to channels marked `inner` or `middle` in `channels.md`; new channels go through
   `channel-review` first.
6. **Re-use** — note which pieces can be cut into others (article → posts → email), and which
   existing assets can be refreshed.
7. **Show the founder**; write the agreed plan to `content-plan.md` (status `planned`). Offer
   to draft the first items with `copywriting`. Dates the founder commits to → obligations.
8. `ai-marketing:log-job`.
