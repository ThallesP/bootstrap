# Quality and Testing

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Biome | Simple default for formatting and linting in supported TS/JS apps | Need ESLint plugin ecosystem coverage, or linting Svelte files | `bunx biome@latest init` |
| ESLint | Svelte apps, framework plugins, or rules only available in ESLint | Simple supported TS/JS app where Biome is enough | Use the framework's official ESLint setup |
| oxlint | Fast linting matters, large TS/JS repo, extra lint speed is valuable | Need rules only available in ESLint, or linting Svelte files | `bunx oxlint@latest --init` |
| Vitest | Unit tests for Vite, TanStack, packages, or frontend-heavy repos | Framework already provides a better test default | `bun add -d vitest` |
| Playwright | Important browser flows, auth flows, dashboards, checkout, E2E QA | Pure package or non-browser project | `bunx playwright@latest install` |
