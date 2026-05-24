# Storage and Cache

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| PlanetScale | MySQL-compatible relational data, branching workflows, hosted database operations | The project needs Postgres-specific features or extensions | PlanetScale CLI or dashboard setup |
| Upstash | Redis, queues, rate limits, caching, serverless-friendly ephemeral state | The selected backend already covers the state or queue need | `bun add @upstash/redis` or product SDK |
