# Bootstrap Program

This is the skill's executable logic in prose. Follow it like code.

## Entry

If the user asks to create, scaffold, bootstrap, initialize, or choose a stack for a new project, run this program.

If the user already chose every major tool, skip recommendation and move to command planning.

## Program

Run this as a loop, not a one-shot answer.

1. Collect context by category.
2. Search for a small number of relevant official or reputable skills.
3. Read the matching tool category files under `docs/tools/`.
4. Recommend one stack by category, with defaults where the user has no preference.
5. Ask for approval or corrections.
6. If the user changes a category, update only that category and loop back to approval.
7. After approval, run official CLIs and package init commands.
8. Run generated checks and report results.

## Context Loop

Ask with the `question` tool when available.

Prefer a compact category-based question set:

1. What are you building?
2. Is the app mostly content/marketing, authenticated product UI, internal tools, developer platform, or dashboard?
3. Do users need accounts, teams, roles, billing, or organizations?
4. Do you need realtime sync, background workers, workflows, notifications, or collaborative state?
5. Is the data model mostly relational/reporting-heavy, reactive/live, files/media, or simple CRUD?
6. Should this be one app or a monorepo with packages, SDKs, workers, or docs?
7. Where will it deploy: Vercel, Railway, Fly, Cloudflare, self-hosted, or undecided?
8. Any hard preferences or existing tools to respect?

Required context:

- Product shape: SaaS, internal tool, developer platform, dashboard, content site, AI app, mobile companion, library, or unknown.
- Data shape: CRUD, realtime, event stream, analytics/reporting, jobs/workflows, files/media, or mostly static.
- Auth needs: none, personal accounts, teams/orgs, enterprise SSO, roles/permissions.
- Time horizon: prototype this week, launch soon, durable foundation, or experiment.
- Repo shape: single app or monorepo.
- Deploy target: Vercel, Railway, Fly, Cloudflare, self-hosted, unknown.

Optional context:

- UI preference: Tailwind, shadcn/ui, design system later, no preference.
- Package manager: Bun, pnpm, npm, yarn.
- Runtime: Node, Bun, edge, serverless, long-running server.
- Existing accounts: Convex, Clerk, Supabase, Neon, Vercel, Railway.

If any required category is unclear, ask only the missing or high-impact follow-up questions. Do not interrogate the user when defaults are safe.

## Skill Discovery Loop

Before scaffolding, check whether official or reputable skills can improve the setup for the chosen project type.

- Prefer the `find-skills` skill, when available, to search skills.sh for relevant project, framework, deployment, database, testing, or UI skills.
- Skills CLI one-liner: use `npx skills find <topic>` to search and `npx skills add <url-or-package> --skill <name>` to install a selected skill.
- Install and use only a small set of clearly relevant skills for the current project.
- Do not bulk-install broad collections, duplicates, near-duplicates, or speculative skills.
- Prefer official skills and high-reputation sources when there are multiple options.
- Ask before installing a skill unless the user already gave permission to install setup dependencies.
- If no skill is clearly useful, proceed without adding one.

## Defaults

Assume these defaults unless the user context pushes elsewhere:

- Tailwind for styling.
- Bun for package manager and scripts in new repos.
- Biome for formatting and linting.
- shadcn/ui for React app UI when the project wants ready-made components.
- Playwright for browser E2E only when the project clearly has a meaningful UI flow worth testing.

## Tool Selection

Read only the category files that match the user's context:

- `docs/tools/package-manager.md`
- `docs/tools/app-shell.md`
- `docs/tools/data-backend.md`
- `docs/tools/auth.md`
- `docs/tools/repo-shape.md`
- `docs/tools/ui-styling.md`
- `docs/tools/quality-testing.md`
- `docs/tools/product-add-ons.md`

Choose one recommendation per relevant category. Skip categories that are out of scope for v0.

When explaining the recommendation, walk category by category so the user can override one choice without redoing the whole stack.

## Approval Gate

Before creating files, present:

- Chosen stack by category.
- Why each major tool is included.
- What official CLIs will run.
- What will not be configured yet.

Ask the user to approve or adjust.

## Scaffold Order

Prefer this order:

1. Create monorepo or app shell with official CLI.
2. Install package manager dependencies through the package manager.
3. Add backend/auth/tooling through their official init commands.
4. Run generated checks.
5. Only then make minimal glue edits that CLIs do not provide.

Prefer these official CLI patterns:

```sh
bun create next-app <app-name>
bun create vite <app-name>
bunx create-tsrouter-app@latest <app-name>
bunx create-turbo@latest <repo-name>
bunx convex@latest dev
bunx shadcn@latest init
bunx biome@latest init
bunx oxlint@latest --init
```

When exact CLI flags are uncertain, run `<cli> --help` first rather than guessing.

## Stop Conditions

Stop and ask when:

- A provider requires account login or dashboard setup.
- A CLI asks an interactive question that affects architecture.
- The target directory exists and is not empty.
- The requested stack has incompatible assumptions.
- A command would overwrite user files.

## Final Report

End with:

- Created path.
- Stack actually installed.
- Commands run.
- Checks run and status.
- Required env vars/provider setup.
- Next command to start development.
