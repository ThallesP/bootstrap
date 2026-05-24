# Tool Matrix

Use this as the default recommendation inventory. Prefer strong fits over adding more tools.

| Tool | Strongest Fit | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Bun | Fast installs, simple TS runtime, modern default package manager | Team is standardized on pnpm/npm/yarn | `bun create`, `bun install`, `bunx` |
| Next.js | SEO, server rendering, route handlers, caching, Vercel, broad ecosystem | Mostly client-only app that wants minimal framework behavior | `bunx create-next-app@latest` or `bun create next-app` |
| TanStack Start | App UI, typed routing, client-heavy flows, strong data/router primitives | Content-heavy SEO site or team wants maximum hiring familiarity | `bunx create-tsrouter-app@latest` |
| Vite | Simple SPA, embedded UI, prototype, framework-light app | Need integrated server rendering/caching conventions | `bun create vite` |
| Convex | Realtime sync, reactive queries, background functions, workflows, internal tools, shared backend types | SQL-heavy reporting, strict DB portability, existing Postgres-first org | `bunx convex@latest dev` |
| Postgres | Relational data, reporting, compliance, existing SQL skills, long-term portability | Realtime/reactive product velocity is the top constraint | Provider CLI plus Drizzle/Prisma init |
| Drizzle | SQL ownership, typed schema, lightweight ORM | Team prefers Prisma migrations/client conventions | `bun add drizzle-orm`, `bunx drizzle-kit` |
| Prisma | Mature ORM workflows, broad docs, many examples | Edge/runtime constraints or desire for thinner SQL layer | `bunx prisma init` |
| Clerk | Fast hosted auth, orgs, social login, passkeys, admin UI | User wants auth owned entirely in repo or minimal vendor dependency | Framework docs/SDK install |
| better-auth | Auth ownership, framework-agnostic setup, lower hosted dependency | Need enterprise auth/org admin immediately with least setup | `bun add better-auth` plus framework integration |
| Auth.js | Established Next.js auth ecosystem, OAuth/session customization | Need fastest hosted account management | `bun add next-auth` |
| Turborepo | Multiple apps, SDK packages, shared types, examples, docs, workers | Single app with no shared packages | `bunx create-turbo@latest` |
| Tailwind CSS | Fast product UI styling, broad component ecosystem | Strict custom CSS/design-system-only team | Framework-specific Tailwind init |
| shadcn/ui | Practical React components with local ownership | Non-React app or strict design system already exists | `bunx shadcn@latest init` |
| Biome | One-tool formatting and linting, simple defaults | Need ESLint plugin ecosystem coverage | `bunx biome@latest init` |
| oxlint | Very fast linting for large TS/JS codebases | Need rules only available in ESLint | `bunx oxlint@latest --init` |
| Vitest | Unit tests for Vite/TanStack/frontend packages | Framework already generated a test runner | `bun add -d vitest` |
| Playwright | Browser QA, E2E flows, auth flows | Pure library/package without browser UI | `bunx playwright@latest install` |
| tRPC | End-to-end typed API across frontend/backend | Convex already owns backend API shape or public REST is required | `bun add @trpc/server @trpc/client` |
| Hono | Small API server, edge/serverless friendly, clean routing | Full framework route handlers are enough | `bun create hono` or `bun add hono` |
| Stripe | Billing and subscriptions | No monetization in v0 | `bun add stripe` |
| Resend | Transactional email | No email flows in v0 | `bun add resend` |
| Inngest | Durable workflows/events with existing DB/API backend | Convex workflows are already enough | `bun add inngest` |
| Trigger.dev | Background jobs and external integrations | Backend provider already solves jobs | Official Trigger.dev init |
| Sentry | Error monitoring, release health | Prototype with no deploy target yet | `bunx @sentry/wizard@latest` |
| PostHog | Product analytics, feature flags, funnels | No user behavior instrumentation needed yet | `bun add posthog-js` |

## Default Bundles

### Fast SaaS

Next.js, Clerk, Postgres/Neon or Convex, Tailwind, shadcn/ui, Biome, Bun.

### Owned SaaS

Next.js or TanStack Start, better-auth, Postgres with Drizzle, Tailwind, Biome or oxlint, Bun.

### Realtime App

TanStack Start or Next.js, Convex, Clerk or better-auth, Tailwind, shadcn/ui, Biome, Bun.

### Internal Tools / Interval-Like

Turborepo, Next.js or TanStack Start app, Convex backend, better-auth, shared packages for SDK/types, Biome or oxlint, Bun.

### Lightweight SPA

Vite, TanStack Router if routing matters, Tailwind, Biome, Bun.
