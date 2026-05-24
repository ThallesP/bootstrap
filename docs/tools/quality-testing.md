# Quality and Testing

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Biome | Simple default for formatting and linting | Need ESLint plugin ecosystem coverage | `bunx biome@latest init` |
| oxlint | Fast linting matters, large TS/JS repo, extra lint speed is valuable | Need rules only available in ESLint | `bunx oxlint@latest --init` |
| Vitest | Unit tests for Vite, TanStack, packages, or frontend-heavy repos | Framework already provides a better test default | `bun add -d vitest` |
| Playwright | Important browser flows, auth flows, dashboards, checkout, E2E QA | Pure package or non-browser project | `bunx playwright@latest install` |
