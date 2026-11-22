---
name: setup
description: Set up (or repair/upgrade) the AI marketing member in the current project — creates the private ai-team/ workspace (shared company files + ai-team/marketing/ with ICP, positioning, claims register, content plan and channels), asks the target market and language, registers marketing in team.md, and offers privacy and scheduled runs. Use on first use in a project, when the workspace is missing, or after a plugin update that changes the workspace.
---

# setup

Template files are in `${CLAUDE_PLUGIN_ROOT}/skills/setup/workspace/`. Never overwrite an
existing file in `ai-team/` — the workspace may already hold real history.

1. **Explain** in two lines what will be created (`ai-team/` private workspace) and that nothing
   leaves the machine.
   **Location:** if an `ai-team/` already exists in this folder or a parent folder, join it —
   never create a second one. Otherwise ask where to create it: in this folder (default), or in a
   parent company folder when this project is one of several products (layout
   `<company>/ai-team/` next to `<company>/projects/<product>/`).
2. **Ask** (one question at a time, skip what is already known):
   - target market — countries or regions, and the B2B segment the company sells to (e.g.
     "mid-size logistics companies in the EU"); "not sure yet" is a fine answer — record `TBD`
     and create an obligation to decide it with `icp-personas`;
   - language — the answer language (skip if `ai-team/team.md` → Settings already has one) and
     the content language(s) for drafts (default: the answer language).
3. **Create shared files if missing** (another member may have created them already):
   `ai-team/README.md`, `ai-team/team.md`, `ai-team/company/profile.md`,
   `ai-team/company/documents.md`, `ai-team/company/products/_template.md`. In a new `team.md`
   fill the date, `workspace_contract: 1` and the answer language; leave `Jurisdiction` as it is
   (the lawyer or accountant sets it). Fill the profile's stage date if it is new.
4. **Create the member folder** `ai-team/marketing/` from the template's `marketing/` folder:
   `learnings.md`, `icp.md`, `positioning.md`, `claims.md`, `content-plan.md`, `channels.md`,
   `history/{journal,decisions,obligations}.md`, `drafts/README.md`, `research/README.md`,
   `digests/README.md`, `inbox/README.md`.
5. **Seed the ICP:** write the target market, content language(s) and today's date at the top of
   `ai-team/marketing/icp.md`. If `ai-team/sales/icp-draft.md` exists (sales was set up first),
   show it to the founder and, once confirmed, copy its content into `icp.md`, marking unproven
   lines `hypothesis`; tell the founder that marketing now owns the ICP (sales reads it).
6. **Register** a row in `team.md`: `marketing | ai-marketing | ai-marketing:marketing |
   ai-team/marketing/ | <plugin version> | <today> | ICP & personas, positioning, content,
   website copy, launches, channel reviews`.
7. **First journal entry** `J-0001 · <today> · setup` and obligations:
   - `O-0001` "Fill in company/profile.md and a product file in company/products/" (due in 14
     days) — only if the profile is still mostly `TBD`;
   - `O-0002` "Define ICP and personas (icp-personas)" (due in 14 days);
   - `O-0003` "Work out positioning and the message house (positioning)" (due in 21 days).
   If products are described in the project (README, docs, website copy), offer to draft the
   product file and a first ICP hypothesis from them — the founder confirms before you write.
8. **Offer, don't force** (ask each; do only what is approved):
   - **Privacy:** if the project is a git repo, add `ai-team/` to `.gitignore`; suggest
     `git init` inside `ai-team/` for private history.
   - **Permissions:** add `WebSearch` and `WebFetch` to the project's `.claude/settings.json`
     allow list so market research runs without prompts (show the exact change first).
   - **Scheduled runs:** a monthly `channel-review` (e.g. 1st of month 10:00). Create it if a
     scheduling tool is available in this session; otherwise explain how to schedule it in the
     Claude app.
9. **Upgrade mode** (workspace exists): compare with the template, create only missing files or
   folders, apply migrations listed in `CHANGELOG.md` for versions newer than the one in
   `team.md`, update the version in `team.md`, and log what changed.
10. Finish with a short summary: what exists now, the three most useful first requests ("define
    our ICP", "work out our positioning", "draft the homepage"), and `log-job`.
