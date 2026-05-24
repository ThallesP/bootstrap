# Bootstrap Program

This is the skill flow. It is plain English, but should be followed like code.

```text
if user asks to bootstrap, scaffold, create, initialize, or choose a stack:
  start bootstrap

categories = product shape, user/account model, data shape, realtime/jobs/workers/workflows, UI/styling constraints, repo shape, deployment target, package/runtime preferences, testing/quality expectations, integrations/add-ons

if context is missing:
  ask for the missing high-impact categories only

if the user already provided related context:
  use it instead of asking again

if a category can safely default later:
  do not ask about it yet

if the question tool is available:
  use it for compact category questions

if the question tool is unavailable:
  ask in chat

if a category clearly benefits from external skill support:
  search for relevant official or reputable skills
  use npx skills find <topic> to search
  summarize useful candidates briefly

if installing a skill is useful and setup installs are not already approved:
  ask before installing

if installing skills:
  use npx skills add <url-or-package> --skill <name>
  install only selected skills
  do not install broad packs, duplicates, near-duplicates, or speculative skills

if context points to a tool category:
  read the matching file under docs/tools

if a tool category is outside the first version:
  skip it

if important categories are known:
  propose a stack by category
  include commands that will run
  include what will not be configured yet
  ask for approval or changes

if the user changes the proposal:
  update only affected categories
  keep unrelated approved choices stable
  ask for approval again

if proposal is approved:
  run official generators and package init commands
  do not hand-write framework boilerplate that a generator should create

if a command would overwrite files:
  stop and ask

if provider login or dashboard setup is required:
  stop and ask

if a CLI asks an architectural question:
  stop and ask

if scaffolding is complete:
  install dependencies through the selected package manager
  run generated checks when they exist
  make only minimal glue edits generators do not provide

finish with:
  created path
  stack actually installed
  commands run
  checks run and status
  required provider setup or environment variables
  next command to start development
```
