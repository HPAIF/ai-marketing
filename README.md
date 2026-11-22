# AI Marketing

An in-house marketing assistant for founders of early-stage B2B companies, running in Claude
Code. Part of the **[AI Team](https://github.com/HPAIF/ai-team)** — agents that work together
for your company.

It defines who you sell to (ICP and personas, shared with the sales member), works out your
positioning and messaging, plans content, drafts website and landing copy, posts, articles and
emails, plans launches, and reviews channels and campaigns. Every claim it writes is backed by a
source or a company fact, and legal questions (claims, testimonials, marketing consent, data
use) go to the lawyer member.

> **It drafts; you publish.** It never publishes, posts, sends, schedules or buys ads, and it
> never logs in to your social, email, ad or website accounts.

## Install

In Claude Code:

```
/plugin marketplace add HPAIF/ai-team
/plugin install ai-marketing@ai-team
```

Or install only this member, straight from its repository:

```
/plugin marketplace add HPAIF/ai-marketing
/plugin install ai-marketing@ai-marketing
```

Then, in your project, say **"set up the AI marketing"**. The `setup` skill creates (or joins) the
private `ai-team/` workspace, asks your target market and language, and offers `.gitignore`,
permissions and a monthly channel review. Nothing leaves your machine.

To share the setup with your team, commit this to the project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "ai-team": { "source": { "source": "github", "repo": "HPAIF/ai-team" } }
  },
  "enabledPlugins": { "ai-marketing@ai-team": true }
}
```

## Use it

Talk normally — Claude hands marketing work to the `ai-marketing:marketing` agent — or start a
session as the marketing member: `claude --agent ai-marketing:marketing`.

| You say | What happens (skill) |
|---|---|
| "Who should we sell to?" / "define our ICP and personas" | `icp.md` with evidence and interview questions (`icp-personas`) |
| "Work out our positioning" / "give me a one-liner" | positioning components, message house, story (`positioning`) |
| "Plan next month's content" | themes and a dated calendar (`content-plan`) |
| "Draft the homepage" / "write a LinkedIn post about X" | draft in `drafts/` with a claims table (`copywriting`) |
| "We launch the integration on the 15th" | tiered launch plan with owners and dates (`launch-plan`) |
| "Is LinkedIn working?" / "which channels should we try?" | Bullseye ranking, tests, digest (`channel-review`) |
| "I published DR-0004 on the blog today" | history updated (`log-job`) |
| "Improve yourself" | anonymised upgrade proposal for this plugin (`improve`) |

Each session in a project with a workspace starts with overdue and upcoming marketing
obligations, recent jobs, drafts waiting for your approval and claims waiting for a source or a
lawyer check (session hook).

**Scheduled run** (offered by `setup`): a monthly `channel-review`.

## How it is built

```
RULES.md                 hard rules: draft only, every claim backed, lawyer checks, never invent…
agents/marketing.md      the agent (reads RULES.md and the workspace)
skills/                  setup · icp-personas · positioning · content-plan · copywriting ·
                         launch-plan · channel-review · log-job · improve
templates/               draft, research memo, launch plan, channel test
docs/research.md         the frameworks behind the skills, with sources
hooks/                   session-start context
```

Frameworks it relies on: April Dunford's positioning components, StoryBrand-style messaging,
AIDA, jobs to be done and switch interviews, The Mom Test, launch tiers, and the Bullseye
framework from *Traction*. See [docs/research.md](docs/research.md).

Your data lives in **your project**, never in the plugin:

```
ai-team/
├── team.md                  installed members, settings
├── company/                 shared with other members: profile, documents, products/<product>.md
└── marketing/               learnings, icp, positioning, claims, content plan, channels,
                             history (journal, decisions, obligations), drafts, research,
                             digests, inbox
```

See the [workspace contract](https://github.com/HPAIF/ai-team/blob/main/docs/workspace.md).

## Privacy
- The plugin is public; your workspace is private. Keep `ai-team/` out of public repositories
  (`setup` offers to add it to `.gitignore`) — `git init` inside it for a private history.
- The marketing member researches the *market* (categories, public competitor pages, buyer
  language), never your company's private facts. Unreleased features and customer names stay out
  of drafts until you say they may be public.
- Files the agent reads are processed by the model you use in Claude Code.

## Self-improvement
1. After corrections, mistakes, unsupported claims or missing steps, the marketing member writes
   a lesson to `ai-team/marketing/learnings.md` and applies it from then on.
2. Lessons useful to everyone are marked `general`. The `improve` skill turns them into an
   anonymised pull request to this repository — only after you approve the exact text, and never
   one that weakens the hard rules.
3. Merged improvements reach every user with the next plugin update.

## Team hand-offs
Marketing works with the other AI Team members through the shared workspace: it **owns the ICP**
(`ai-team/marketing/icp.md`), which the sales member reads; it sends claims, testimonials,
marketing consent and data-use questions to the **lawyer**; budgets and ad-spend questions to the
**accountant**; technical and security claims to the **cto** and **security** members; launch
scope to **product**; and it reads sales notes for buyer language and lost-deal reasons. If a
member isn't installed, it names the plugin (`ai-<member>`).

## Upgrading
`/plugin marketplace update ai-team`, then `/plugin update ai-marketing@ai-team` (restart Claude
Code). Run "set up the AI marketing" again to apply workspace migrations; it never overwrites
your history.

## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md). License: [MIT](LICENSE).
