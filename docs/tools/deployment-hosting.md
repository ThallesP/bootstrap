# Deployment and Hosting

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Vercel | Frontend, Next.js, static sites, preview deployments, edge/serverless-first apps | Long-running servers or non-web services are the main workload | `vercel` CLI or framework deploy docs |
| Railway | Full-stack apps, workers, databases, queues, long-running services, simple infra from repo | Static frontend-only app with Vercel already selected | `railway` CLI or dashboard setup |
