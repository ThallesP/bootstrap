# Bootstrap Program

This is the skill flow. It is plain English, but should be followed sequentially like code.

```text
categories = product shape, user/account model, data shape, realtime/jobs/workers/workflows, UI/styling constraints, repo shape, deployment/hosting target, package/runtime preferences, testing/quality expectations, observability, API keys, integrations/add-ons

if user asks to bootstrap, scaffold, create, initialize, or choose a stack:
  continue
else:
  do not run this program

if the user already chose the major tools:
  keep those choices and move to command planning
else:
  collect context by category

if context is missing:
  ask for the missing high-impact categories only
else:
  continue with the provided context

if the user already provided related context:
  use it instead of asking again
else:
  ask only what is needed now

if a category can safely default later:
  do not ask about it yet
else:
  ask before recommending that category

if the question tool is available:
  use it for compact category questions
else:
  ask in chat

if a category clearly benefits from external skill support:
  search for relevant official or reputable skills
  use npx skills find <topic> to search
  summarize useful candidates briefly
else:
  skip skill search

if installing a skill is useful and setup installs are not already approved:
  ask before installing
else:
  continue without another install prompt

if installing skills:
  use npx skills add <url-or-package> --skill <name>
  install only selected skills
  do not install broad packs, duplicates, near-duplicates, or speculative skills
else:
  continue without installing skills

if context points to a tool category:
  read the matching file under docs/tools
else:
  do not read unrelated tool files

if a tool category is outside the first version:
  skip it
else:
  include it in the stack proposal

if important categories are known:
  propose a stack by category
  include commands that will run
  include what will not be configured yet
  ask for approval or changes
else:
  return to context collection

if the user changes the proposal:
  update only affected categories
  keep unrelated approved choices stable
  ask for approval again
else:
  keep the proposal unchanged

if proposal is approved:
  run official generators and package init commands
  do not hand-write framework boilerplate that a generator should create
else:
  do not scaffold yet

if a command would overwrite files:
  stop and ask
else:
  continue

if provider login or dashboard setup is required:
  stop and ask
else:
  continue

if a CLI asks an architectural question:
  stop and ask
else:
  continue

if scaffolding is complete:
  install dependencies through the selected package manager
  run generated checks when they exist
  make only minimal glue edits generators do not provide
else:
  report where scaffolding stopped

finish with:
  created path
  stack actually installed
  commands run
  checks run and status
  required provider setup or environment variables
  next command to start development
```
