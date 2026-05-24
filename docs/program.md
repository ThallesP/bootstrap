# Bootstrap Program

This is the skill's executable logic in prose. Follow it like code.

## Entry

If the user asks to create, scaffold, bootstrap, initialize, or choose a stack for a new project, run this program.

If the user already chose every major tool, skip recommendation and move to command planning.

## Skill Discovery

Before scaffolding, check whether official or reputable skills can improve the setup for the chosen project type.

- Prefer the `find-skills` skill, when available, to search skills.sh for relevant project, framework, deployment, database, testing, or UI skills.
- Install and use only a small set of clearly relevant skills for the current project.
- Do not bulk-install broad collections, duplicates, near-duplicates, or speculative skills.
- Prefer official skills and high-reputation sources when there are multiple options.
- Ask before installing a skill unless the user already gave permission to install setup dependencies.
- If no skill is clearly useful, proceed without adding one.

## Context Collection

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

## Defaults

Assume these defaults unless the user context pushes elsewhere:

- Tailwind for styling.
- Bun for package manager and scripts in new repos.
- Biome for formatting and linting.
- shadcn/ui for React app UI when the project wants ready-made components.
- Playwright for browser E2E only when the project clearly has a meaningful UI flow worth testing.

## Category Selection

Choose one recommendation per category instead of trying to decide the whole stack in one branchy pass.

### App Shell

- Choose Next.js for content, SEO, server rendering, route handlers, caching, or Vercel-first projects.
- Choose TanStack Start for authenticated app UI, typed routing/data flows, and lower-framework-magic product apps.
- Choose Vite for client-only SPAs, embedded tools, prototypes, or UIs that pair with a separate backend.

### Data and Backend

- Choose Convex when the app needs realtime sync, background workflows, reactive queries, or fast iteration on app plus backend together.
- Choose Postgres with Drizzle or Prisma when the app needs relational reporting, SQL ownership, conventional backend architecture, or DB portability.
- Choose framework route handlers or no backend yet when the first version is light and does not justify a full backend choice.

### Auth

- Choose Clerk when launch speed, hosted auth flows, organizations, and account UI matter more than owning auth internals.
- Choose better-auth when the team wants auth in the repo, more control, and can accept more setup.
- Skip auth in v0 when the app does not need it yet.

### Repo Shape

- Choose Turborepo when the project needs multiple apps, shared packages, SDKs, docs, workers, or examples.
- Choose a single app when the project is one deployable surface with little shared code.

### UI and Styling

- Default to Tailwind unless the user already has a design system or explicitly wants another styling approach.
- Add shadcn/ui for React projects that want practical components with local ownership.

### Quality Tooling

- Default to Biome when the user wants one simple formatting and linting tool.
- Add oxlint when lint speed matters or the repo will be large.
- Add Vitest for unit tests when the chosen framework does not already give a better default.
- Add Playwright for browser E2E when auth flows, checkout, dashboards, or other important UI paths need coverage.

### Small Supporting Tools

- Add Stripe only when billing is in scope.
- Add Resend only when email flows are in scope.
- Add Sentry once there is a deploy target worth monitoring.
- Add PostHog when analytics or feature flags are clearly useful.
- Add Hono when the project needs a small standalone API instead of framework route handlers.
- Add tRPC when the team wants a typed app-to-API boundary and Convex is not already the backend shape.
- Add Inngest or Trigger.dev only when durable jobs are needed and the selected backend does not already cover that need.

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
