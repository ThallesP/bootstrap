# Auth

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Clerk | Fast hosted auth, orgs, social login, passkeys, admin UI | Team wants auth owned fully in the repo | Framework docs and SDK install |
| WorkOS | Enterprise auth, SSO, directory sync, audit logs, B2B SaaS admin requirements | Simple consumer auth or fastest hosted account UI is enough | WorkOS docs and SDK setup |
| better-auth | Auth ownership, more control, lower hosted dependency | Need the fastest possible org-ready hosted setup | `bun add better-auth` plus framework integration |
