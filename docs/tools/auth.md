# Auth

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Clerk | Fast hosted auth, orgs, social login, passkeys, admin UI | Team wants auth owned fully in the repo | Framework docs and SDK install |
| better-auth | Auth ownership, more control, lower hosted dependency | Need the fastest possible org-ready hosted setup | `bun add better-auth` plus framework integration |
| Auth.js | Next.js app needs established auth patterns and flexible session/OAuth control | Hosted account management speed matters more | `bun add next-auth` |
