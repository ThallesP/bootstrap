# Example: Interval-Like Stack

Use this recipe when the user wants an updated Interval-style product: developer-defined workflows/actions, internal tools, dashboards, jobs, approvals, and SDKs that talk to a typed backend.

## Product Assumption

The app lets developers define actions/workflows in code, expose them to an authenticated web UI, and share types between SDK packages and a Convex backend.

## Recommended V0 Stack

- Bun for package management and scripts.
- Turborepo for apps plus packages.
- Next.js for the web app when caching, route handlers, SEO docs, or Vercel deploys matter.
- TanStack Start instead of Next.js when the app is mostly authenticated UI and the team wants typed routing/data-first ergonomics.
- Convex for reactive state, server functions, jobs, and shared backend types.
- better-auth for owned auth in-repo if launch speed is not the only priority.
- Clerk instead of better-auth when organizations, hosted account UI, and fastest launch matter more.
- Biome for formatting/linting, or oxlint plus Biome formatting for speed-focused repos.
- `packages/sdk` for the public TypeScript SDK.
- `packages/shared` for shared schemas, types, and constants.

## Monorepo Shape

```text
apps/web          # Next.js or TanStack Start app
packages/backend  # Convex functions, schema, generated API wrappers if separated
packages/sdk      # User-facing SDK for registering actions/workflows
packages/shared   # Shared schemas and types
packages/config   # Shared tsconfig/biome config if needed
```

Do not create this tree by hand if an official CLI can create most of it. Start with Turborepo, then add official framework/backend CLIs.

## CLI-First Scaffold Plan

Run only after user approval.

```sh
bunx create-turbo@latest <repo-name>
cd <repo-name>
bun install
```

Then choose one app generator:

```sh
bunx create-next-app@latest apps/web --ts --tailwind --app --src-dir --import-alias "@/*"
```

or:

```sh
bunx create-tsrouter-app@latest apps/web
```

Then add Convex from the repo root or web app depending on the CLI's current guidance:

```sh
bunx convex@latest dev
```

Then add auth after confirming hosted vs owned:

```sh
bun add better-auth
```

or follow Clerk's current framework guide and use the official SDK install.

Then add quality tooling:

```sh
bunx biome@latest init
bunx oxlint@latest --init
```

## Minimal Glue After CLIs

Only after CLIs finish, add small connecting files if needed:

- Workspace package names.
- `packages/shared` exports.
- `packages/sdk` package entrypoint.
- Convex type exports consumed by `packages/sdk`.
- Root scripts that delegate to generated app/package scripts.

## First Product Slice

Keep the first slice narrow:

- User signs in.
- Developer registers one typed action in `packages/sdk`.
- Convex stores action metadata and execution records.
- Web app lists actions and can trigger a demo action.
- SDK and web app share one schema from `packages/shared`.

Avoid building queues, billing, external integrations, RBAC, audit logs, and marketplace concepts until the first action loop works.
