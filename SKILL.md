---
name: bootstrap
description: Start a new modern TypeScript app by interviewing the user, recommending a stack, and running official CLIs. Use when the user wants to bootstrap, scaffold, create, initialize, or choose a stack for a new app, template, SaaS, dashboard, developer tool, realtime app, or monorepo.
---

# Bootstrap

Use this skill to turn rough product context into a practical starter app. It is a small decision program for an agent, not a generic template.

## Operating Rules

- Ask questions first unless the user already gave enough context to choose a stack.
- Prefer the `question` tool when available. If not available, ask the same questions in chat.
- Recommend one default stack and at most two alternates.
- Ask for approval before running project creation commands.
- Use official CLIs and package init commands instead of hand-writing generated framework files.
- Do not invent custom boilerplate when a framework CLI can create it.
- Keep the first app small: auth, database, styling, linting, package manager, and deploy target are enough.
- After scaffolding, run install, lint/typecheck/test/build commands that exist in the generated project.
- If a CLI opens an interactive prompt, rerun it with flags when possible or ask the user to answer only the unavoidable prompts.

## Load These References

- Read `docs/program.md` for the conditional flow.
- Read `docs/tool-matrix.md` before recommending tools.
- Read `docs/example-interval-stack.md` when the user asks for an Interval-like app, developer workflows, admin actions, jobs, internal tools, SDKs, or Convex-backed command surfaces.

## Default Question Set

Use the `question` tool with compact choices where possible:

1. What are you building?
2. Is the app mostly marketing/content, app UI, internal tools, developer platform, or data-heavy dashboard?
3. Do users need accounts, teams, roles, billing, or organizations?
4. Does it need realtime sync, multiplayer state, live jobs, notifications, or collaborative UI?
5. Is launch speed more important than long-term ownership of auth and backend code?
6. Should it be a monorepo with app, packages, SDKs, and shared types?
7. Where will it deploy: Vercel, Railway, Fly, Cloudflare, self-hosted, or undecided?
8. Any hard preferences: Bun, pnpm, Next.js, TanStack Start, Vite, Convex, Postgres, Clerk, better-auth, Tailwind, shadcn/ui, Biome, oxlint?

## Recommendation Policy

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

## Minimal Output Contract

Before commands, show:

- App summary in one sentence.
- Recommended stack with one-line reasons.
- Commands that will be run.
- Any decisions still required.

After commands, show:

- What was created.
- Commands that passed or failed.
- Next setup steps, especially env vars and provider dashboards.

## Official CLI Bias

Prefer these patterns:

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
