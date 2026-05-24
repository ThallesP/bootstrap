# Bootstrap Program

This is the skill's executable logic in prose. Follow it like code.

## Entry

If the user asks to create, scaffold, bootstrap, initialize, or choose a stack for a new project, run this program.

If the user already chose every major tool, skip recommendation and move to command planning.

## Context Collection

Ask with the `question` tool when available.

Prefer a compact question set:

1. What are you building?
2. Is the app mostly marketing/content, app UI, internal tools, developer platform, or data-heavy dashboard?
3. Do users need accounts, teams, roles, billing, or organizations?
4. Does it need realtime sync, multiplayer state, live jobs, notifications, or collaborative UI?
5. Is launch speed more important than long-term ownership of auth and backend code?
6. Should it be a monorepo with app, packages, SDKs, and shared types?
7. Where will it deploy: Vercel, Railway, Fly, Cloudflare, self-hosted, or undecided?
8. Any hard preferences: Bun, pnpm, Next.js, TanStack Start, Vite, Convex, Postgres, Clerk, better-auth, Tailwind, shadcn/ui, Biome, oxlint?

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

## Stack Selection

Use these branches:

```text
if realtime or reactive backend or background workflows:
  suggest Convex
else if SQL/reporting/compliance/existing DB:
  suggest Postgres + Drizzle or Prisma
else:
  suggest no backend yet or framework route handlers

if auth required and launch speed high:
  suggest Clerk
else if auth required and ownership/control high:
  suggest better-auth
else:
  skip auth for v0

if SEO/content/caching/server rendering/Vercel-first:
  suggest Next.js
else if app UI/client interactions/typed routing/less magic:
  suggest TanStack Start
else if static SPA/prototype/separate backend:
  suggest Vite

if SDKs/shared types/multiple apps/examples/docs:
  suggest Turborepo
else:
  suggest single app

if no package manager preference:
  suggest Bun

if simple quality tooling:
  suggest Biome
if very fast linting or large codebase:
  suggest oxlint, optionally with Biome format
```

Use these specific fit rules when explaining the recommendation:

- Choose Next.js when server rendering, caching, route handlers, Vercel deploys, content, SEO, or mature ecosystem matter.
- Choose TanStack Start when the product is app-UI first, client-heavy, typed routing/data flows matter, and the user wants less framework magic than Next.js.
- Choose Vite when the app is mostly client-side, embedded, prototype-oriented, or will pair with a separate backend.
- Choose Convex when realtime data, reactive queries, background jobs, internal workflows, shared backend types, or fast product iteration matter.
- Choose Postgres plus Drizzle or Prisma when relational reporting, SQL portability, existing DB operations, or conventional backend ownership matter.
- Choose Clerk when launch speed, organizations, passkeys/social auth, and hosted account management are more important than owning auth internals.
- Choose better-auth when the user wants auth in their codebase, more control, lower hosted dependency, or can afford more setup.
- Choose Turborepo when there will be multiple apps, SDK packages, shared types, worker packages, docs, or examples.
- Choose Bun when the user has no package manager preference or explicitly wants fast install/runtime. Respect existing repo package managers.
- Choose Biome for formatting plus linting when the user wants one simple tool.
- Choose oxlint when fast linting is a priority; pair with Biome for formatting if needed.

## Approval Gate

Before creating files, present:

- Chosen stack.
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
