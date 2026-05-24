# Data and Backend

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Convex | Realtime sync, reactive queries, internal tools, workflows, background jobs, app-plus-backend iteration speed | SQL-heavy reporting, strict DB portability, existing Postgres-first org | `bunx convex@latest dev` |
| Postgres | Relational data, reporting, compliance, conventional backend ownership, SQL portability | Realtime/reactive product velocity matters more than SQL ownership | Provider CLI plus ORM init |
| Drizzle | Team wants typed SQL ownership with a lightweight ORM layer | Team prefers Prisma conventions and ecosystem | `bun add drizzle-orm`, `bunx drizzle-kit` |
| Prisma | Mature ORM workflows, broad docs, common team familiarity | Edge/runtime constraints or preference for thinner SQL layer | `bunx prisma init` |
| ElysiaJS | Bun-native API server, high-performance typed backend, standalone service | The app is not using Bun or framework route handlers are enough | `bun create elysia` or Elysia docs |
| Hono | Small standalone API, edge/serverless friendly service, clean routing | Framework route handlers are enough | `bun create hono` or `bun add hono` |
| oRPC | Typed contract-first API boundary without Convex | Convex already defines the backend shape or a plain REST API is enough | oRPC docs and package install |
