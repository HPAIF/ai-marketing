---
name: log-job
description: Record a job in the company's marketing memory — journal entry plus updates to decisions, obligations, the claims register, content plan, channels, ICP/positioning, shared company facts and learnings. Use at the end of every task that produced a draft, a plan, advice, a decision, a deadline or a change of company facts (including scheduled runs).
---

# log-job

All history files are **append-only**: add rows/entries; to correct, add a new entry that
references the old one. Never delete history. Get today's date with `date +%F`.
Paths below are under `ai-team/marketing/` unless they start with `ai-team/`.

1. **Journal** — append to `history/journal.md` (next J-number, format at the top of the file):
   request, what was done and with which framework, output files and draft status, claims and
   sources relied on, follow-ups.
2. **Decisions** — the founder chose something (segment, positioning, category, message, channel
   bet, launch tier, tone) → append to `history/decisions.md` with the reasoning and evidence.
3. **Obligations** — every deadline, launch date, recurring review, draft waiting for approval
   (type `approval`) or recommended action → append a row to `history/obligations.md` (keep the
   exact table format; due date `YYYY-MM-DD` or `—`). Mark finished ones `done` (don't delete).
4. **Claims** — every new claim → a row in `claims.md`; a source found or a lawyer answer →
   update the row's status and add a dated note.
5. **Drafts** — set each touched draft's `status:` (draft / ready / approved / published /
   dropped). When the founder says a draft went out, record `published` with date and where
   (the founder published it — you never do).
6. **Plans and registers** — update `content-plan.md` and `channels.md` rows; ICP or positioning
   changes go into `icp.md` / `positioning.md` **and** a decision row.
7. **Company facts** — new or changed facts → update `ai-team/company/profile.md`, the product
   file in `ai-team/company/products/` or `ai-team/company/documents.md`, and say in the journal
   entry what changed (these files are shared with other members). If it contradicts another
   member's files, flag it to the founder.
8. **Learnings** — anything this task taught you (correction, mistake, unsupported claim, source
   change, missing step) → append to `learnings.md` with the right scope (see RULES.md).
9. Confirm to the founder in one line what was recorded (e.g. "Logged J-0007, DR-0003 ready,
   CL-0012 needs-lawyer, O-0009").
