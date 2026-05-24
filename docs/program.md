# Bootstrap Program

This is the skill's executable logic in prose. Follow it like code.

## Entry

If the user asks to create, scaffold, bootstrap, initialize, or choose a stack for a new project, run this program.

If the user already chose every major tool, skip recommendation and move to command planning.

## Context Collection

Ask with the `question` tool when available.

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
