---
name: bootstrap
description: Start a new modern TypeScript app by interviewing the user, recommending a stack, and running official CLIs. Use when the user wants to bootstrap, scaffold, create, initialize, or choose a stack for a new app, template, SaaS, dashboard, developer tool, realtime app, or monorepo.
---

# Bootstrap

Use this skill to turn rough product context into a practical starter app. `SKILL.md` is intentionally small because skill hosts discover this file and read its frontmatter; the actual decision program lives in `docs/program.md`.

## Runbook

- Read and follow `docs/program.md` as the main executable logic.
- Read the relevant category files under `docs/tools/` before recommending tools.

## Core Rule

Prefer official CLIs and package init commands. Do not invent custom framework boilerplate when a generator can create it.
