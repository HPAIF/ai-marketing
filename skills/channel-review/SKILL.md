---
name: channel-review
description: Choose and test marketing channels with the Bullseye framework (brainstorm all traction channels, rank, test a few cheaply, focus on the one that works) and review campaign or content results against their goals. Updates ai-team/marketing/channels.md and writes a digest. Runs monthly on a schedule; also use for "which channels should we use", "is LinkedIn/SEO/events working", "review this campaign".
---

# channel-review

Framework: **Bullseye** from *Traction* (Weinberg & Mares) — brainstorm across the 19 traction
channels, rank them into rings (outer: possible · middle: promising · inner: test now), run
cheap parallel tests on the inner ring, then focus on the one channel that moves the goal.
Campaigns are judged against the goal and hypothesis set before they started.
Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

Scheduled runs (no founder present) never ask questions — they record them as obligations.

1. **Load memory**: `channels.md`, `content-plan.md` (what was published, per the founder),
   drafts with `published` status, `icp.md` (where personas learn), decisions, obligations,
   the previous digest, active lessons. If a sales member exists, read where won deals came
   from in `ai-team/sales/pipeline.md`.
2. **Results** — use only numbers the founder provided (exports in `inbox/`, figures in chat) or
   records in the workspace. Never estimate results you were not given; write "no data".
   You never log in to analytics or ad accounts.
3. **Review active tests and campaigns** — for each: hypothesis, spend/effort, result vs. goal,
   what was learned, decision proposed (continue / change / stop). Leading indicators are fine
   early (replies, demo requests, qualified conversations), vanity metrics are labelled as such.
4. **Re-rank channels** (on request, or every quarter): brainstorm one idea per traction channel
   for this ICP, place each in a ring with a one-line reason, pick 1–3 cheap tests for the inner
   ring with hypothesis, budget, duration and success measure — a row in `channels.md` and, for
   anything bigger than a one-line test, a file `research/CH-XXXX-slug.md` from
   `${CLAUDE_PLUGIN_ROOT}/templates/channel-test.md`. Any spend is the founder's decision
   (rule 8); budgets → hand-off to `accountant`.
5. **Write** `ai-team/marketing/digests/YYYY-MM-DD-channel-review.md`:
   ```
   # Channel review — YYYY-MM-DD (period: … → …)
   ## Decisions needed from the founder
   ## Tests and campaigns: result vs. goal
   ## Channel rings (changes)
   ## Next tests proposed (hypothesis, budget, duration, measure)
   ## Content plan: done / slipped / next
   ## Drafts waiting for approval and claims waiting for checks
   ## Agent self-improvement (pending learnings)
   ```
6. **Update memory**: `channels.md` rows and test log; new tests and reviews → obligations;
   count `general` learnings that are `pending` and suggest `ai-marketing:improve` if 3+;
   `ai-marketing:log-job` with request "scheduled: channel-review" when scheduled.
