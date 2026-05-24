# Product Add-Ons

| Tool | Choose When | Avoid When | Official CLI / Init |
| --- | --- | --- | --- |
| Stripe | Billing and subscriptions are in scope | No monetization in the first slice | `bun add stripe` |
| Resend | Transactional email flows are in scope | No email flows yet | `bun add resend` |
| Inngest | Durable workflows/events are needed with a DB/API backend | Convex or another backend already covers workflows well enough | `bun add inngest` |
| Trigger.dev | Background jobs and external integrations need their own platform | Existing backend already covers jobs well enough | Official Trigger.dev init |
| PostHog | Product analytics, experiments, or feature flags matter | No behavioral instrumentation is needed yet | `bun add posthog-js` |
