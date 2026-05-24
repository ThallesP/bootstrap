# App Shell

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Next.js | SEO, content, server rendering, route handlers, caching, Vercel-first apps | Mostly client-only app that wants minimal framework behavior | `bunx create-next-app@latest` or `bun create next-app` |
| TanStack Start | Authenticated product UI, typed routing, client-heavy flows, less framework magic | Content-heavy site or team wants the most common full-stack default | `bunx create-tsrouter-app@latest` |
| Vite | SPA, embedded tool, prototype, separate backend, minimal app shell | Need integrated server rendering or framework conventions | `bun create vite` |
