# Repo Shape

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Turborepo | Multiple apps, SDKs, workers, shared packages, docs, examples | Single app with little shared code; do not keep template apps, docs, packages, tools, or configs unless approved | `bunx create-turbo@latest`, then remove generated workspaces and tooling outside the plan |
