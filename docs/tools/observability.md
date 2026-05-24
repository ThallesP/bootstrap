# Observability

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Sentry | Error monitoring, performance traces, release health, production debugging | Prototype has no deploy target or runtime worth monitoring yet | `bunx @sentry/wizard@latest` |
| evlog | Structured application events, audit-style trails, local wide-event logs, agent-readable debugging | The app only needs hosted exception tracking | `bun add evlog` or project-specific setup |
