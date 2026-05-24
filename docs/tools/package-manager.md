# Package Manager

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Bun | New TS app, fast installs, simple scripts, no existing package manager preference | Team is already standardized on pnpm, npm, or yarn | `bun create`, `bun install`, `bunx` |
| pnpm | Existing pnpm workspace, strict workspace behavior, team standardization | Greenfield project with no strong preference and simpler Bun defaults are fine | Framework CLI with `pnpm` |
