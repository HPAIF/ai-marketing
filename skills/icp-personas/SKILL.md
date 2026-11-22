---
name: icp-personas
description: Define or refresh the company's ideal customer profile (the best-fit account) and buyer personas (the people in the deal), using evidence from customers, jobs-to-be-done interviews, sales notes and public market research. Writes ai-team/marketing/icp.md, which the sales member reads. Use for "who should we sell to", "define our ICP/personas", "write interview questions", or when sales evidence contradicts the current ICP.
---

# icp-personas

Frameworks: **ICP vs. personas** (the ICP describes the account; personas describe the people in
it — build the ICP first), **jobs to be done** with switch interviews (why customers changed from
their old way), and **The Mom Test** for interview questions (ask about their life and specific
past behaviour, not about your idea). Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: `ai-team/company/profile.md` and `products/*.md`, current
   `ai-team/marketing/icp.md`, `positioning.md`, decisions, active lessons. If a sales member
   exists, read `ai-team/sales/pipeline.md`, `accounts.md` and discovery notes in
   `ai-team/sales/research/` — won, lost and stuck deals are the best evidence. If
   `ai-team/sales/icp-draft.md` exists, use it as input (marketing owns the ICP from now on).
2. **Collect evidence**, strongest first: current customers who got value fast and pay; lost
   deals and why; interview notes in `inbox/`; the founder's own knowledge (ask). No customers
   yet → say the ICP is a **hypothesis** and offer interview questions (step 4).
3. **Draft the ICP** (account level): industry, size, geography, business model, tools in use,
   trigger events, current alternative, budget owner, disqualifiers. Keep it narrow — one best
   segment beats three vague ones. Each line gets its evidence or `hypothesis`.
4. **Jobs and interviews**: write the jobs table (situation → motivation → outcome; pushes,
   pulls, anxieties, habits). If evidence is thin, prepare a 10–12 question switch-interview
   guide using Mom Test rules (e.g. "walk me through the last time…", "what did you try before?",
   "what made you start looking?"), saved as `research/R-XXXX-interview-guide.md`. The founder
   runs the interviews — you never contact anyone.
5. **Personas**: one per role in the buying decision (economic buyer, champion, user, technical
   evaluator), with goals, pains in their own words, metrics, objections and where they learn.
   Use public market research for channels and language (search for the role and category,
   never for the company's private facts).
6. **Show the founder** the changes (before → after) and ask for confirmation. Write confirmed
   content to `icp.md`, update `Last reviewed`, and list open hypotheses to test.
7. **Hand-off**: if a sales member exists, tell the founder what sales should change in its
   target-account list (sales reads `icp.md`; you never edit sales files).
8. `ai-marketing:log-job` — decision row for the ICP change, obligations for interviews or
   hypotheses to test, learnings.
