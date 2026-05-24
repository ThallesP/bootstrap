# App Shell

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Next.js | SEO, content, server rendering, route handlers, caching, Vercel-first apps | Mostly client-only app that wants minimal framework behavior | `bunx create-next-app@latest` or `bun create next-app`; prefer the `src` directory option |
| SvelteKit | Svelte app with SSR, routing, form actions, simple full-stack ergonomics | Team wants React ecosystem or React component libraries | `bun create svelte@latest` |
| TanStack Start | Authenticated product UI, typed routing, client-heavy flows, less framework magic | Content-heavy site or team wants the most common full-stack default | `bunx create-tsrouter-app@latest` |
| Astro | Content-heavy site, marketing/docs, islands architecture, mostly static output | Authenticated product UI is the main app | `bun create astro` |
| Remix | Web-standard React app, nested routing, server-first data mutations | Team wants Next.js ecosystem defaults or non-React app | `bunx create-remix@latest` |
| Vite | SPA, embedded tool, prototype, separate backend, minimal app shell | Need integrated server rendering or framework conventions | `bun create vite` |
