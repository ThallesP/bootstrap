# Tool Matrix

Use this as a focused recommendation set. Pick the strongest fit in each category instead of assembling a long list of tools.

## Default Assumptions

- Styling: Tailwind
- Package manager: Bun
- Formatting and linting: Biome
- Component library for React apps: shadcn/ui when useful

## Package Manager

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Bun | New TS app, fast installs, simple scripts, no existing package manager preference | Team is already standardized on pnpm, npm, or yarn | `bun create`, `bun install`, `bunx` |
| pnpm | Existing pnpm workspace, strict workspace behavior, team standardization | Greenfield project with no strong preference and simpler Bun defaults are fine | Framework CLI with `pnpm` |

## App Shell

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Next.js | SEO, content, server rendering, route handlers, caching, Vercel-first apps | Mostly client-only app that wants minimal framework behavior | `bunx create-next-app@latest` or `bun create next-app` |
| TanStack Start | Authenticated product UI, typed routing, client-heavy flows, less framework magic | Content-heavy site or team wants the most common full-stack default | `bunx create-tsrouter-app@latest` |
| Vite | SPA, embedded tool, prototype, separate backend, minimal app shell | Need integrated server rendering or framework conventions | `bun create vite` |

## Data and Backend

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Convex | Realtime sync, reactive queries, internal tools, workflows, background jobs, app-plus-backend iteration speed | SQL-heavy reporting, strict DB portability, existing Postgres-first org | `bunx convex@latest dev` |
| Postgres | Relational data, reporting, compliance, conventional backend ownership, SQL portability | Realtime/reactive product velocity matters more than SQL ownership | Provider CLI plus ORM init |
| Drizzle | Team wants typed SQL ownership with a lightweight ORM layer | Team prefers Prisma conventions and ecosystem | `bun add drizzle-orm`, `bunx drizzle-kit` |
| Prisma | Mature ORM workflows, broad docs, common team familiarity | Edge/runtime constraints or preference for thinner SQL layer | `bunx prisma init` |
| Hono | Small standalone API, edge/serverless friendly service, clean routing | Framework route handlers are enough | `bun create hono` or `bun add hono` |
| tRPC | Typed frontend/backend boundary without Convex | Convex already defines the backend shape or public REST is needed | `bun add @trpc/server @trpc/client` |

## Auth

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Clerk | Fast hosted auth, orgs, social login, passkeys, admin UI | Team wants auth owned fully in the repo | Framework docs and SDK install |
| better-auth | Auth ownership, more control, lower hosted dependency | Need the fastest possible org-ready hosted setup | `bun add better-auth` plus framework integration |
| Auth.js | Next.js app needs established auth patterns and flexible session/OAuth control | Hosted account management speed matters more | `bun add next-auth` |

## Repo Shape

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Turborepo | Multiple apps, SDKs, workers, shared packages, docs, examples | Single app with little shared code | `bunx create-turbo@latest` |

## UI and Styling

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Tailwind CSS | Fast product UI styling, broad component ecosystem, default project styling | Strict custom CSS or existing design system says otherwise | Framework-specific Tailwind init |
| shadcn/ui | React apps need practical components with local ownership | Non-React project or strict design system already exists | `bunx shadcn@latest init` |

## Quality and Testing

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Biome | Simple default for formatting and linting | Need ESLint plugin ecosystem coverage | `bunx biome@latest init` |
| oxlint | Fast linting matters, large TS/JS repo, extra lint speed is valuable | Need rules only available in ESLint | `bunx oxlint@latest --init` |
| Vitest | Unit tests for Vite, TanStack, packages, or frontend-heavy repos | Framework already provides a better test default | `bun add -d vitest` |
| Playwright | Important browser flows, auth flows, dashboards, checkout, E2E QA | Pure package or non-browser project | `bunx playwright@latest install` |

## Product Add-Ons

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Stripe | Billing and subscriptions are in scope | No monetization in the first slice | `bun add stripe` |
| Resend | Transactional email flows are in scope | No email flows yet | `bun add resend` |
| Inngest | Durable workflows/events are needed with a DB/API backend | Convex or another backend already covers workflows well enough | `bun add inngest` |
| Trigger.dev | Background jobs and external integrations need their own platform | Existing backend already covers jobs well enough | Official Trigger.dev init |
| Sentry | Production error monitoring and release health matter | Prototype with no real deploy target yet | `bunx @sentry/wizard@latest` |
| PostHog | Product analytics, experiments, or feature flags matter | No behavioral instrumentation is needed yet | `bun add posthog-js` |

## Starter Bundles

### Fast SaaS

Next.js, Clerk, Postgres or Convex, Tailwind, shadcn/ui, Biome, Bun.

### Owned SaaS

Next.js or TanStack Start, better-auth, Postgres with Drizzle, Tailwind, Biome, Bun.

### Realtime Product

TanStack Start or Next.js, Convex, Clerk or better-auth, Tailwind, shadcn/ui, Biome, Bun.

### Internal Tool

TanStack Start or Next.js, Convex or Postgres, better-auth, Tailwind, Biome, Bun.

### Lightweight SPA

Vite, Tailwind, Biome, Bun.
