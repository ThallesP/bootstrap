# Bootstrap Program

This is the skill flow. It is plain English, but should be followed sequentially like code.

```text
categories = product shape, user/account model, data shape, realtime/jobs/workers/workflows, UI/styling constraints, repo shape, deployment/hosting target, package/runtime preferences, testing/quality expectations, observability, API keys, integrations/add-ons
categorySelections = stored user selections and short app-specific reasons, keyed by category

if user asks to bootstrap, scaffold, create, initialize, or choose a stack:
  continue
else:
  do not run this program

if the user already chose the major tools:
  keep those choices and move to command planning
else:
  collect context by category

if context is missing:
  present missing high-impact categories as selectable options
else:
  continue with the provided context

if the user already provided related context:
  use it instead of asking again
else:
  ask only what is needed now

if a category can safely default later:
  do not ask about it yet
else:
  present the category before recommending that category

when presenting a category:
  always allow multiple selections, even when the category looks single-choice
  include recommended options and viable alternatives when useful
  store the user's selections in categorySelections
  reuse categorySelections for later questions, stack proposals, command planning, and scaffolding
  if the user changes a selection, update only that category

when presenting any recommendation, whether in chat, a proposal, or the question tool:
  tailor the trigger/reason to the user's app context, not a generic tool description
  keep the trigger/reason short, usually under 20 words
  name the recommended tool or decision separately from the reason
  explain why this app needs it now, and skip it if it is not part of the first useful slice
  for jobs/workers/workflows, pick the strongest fit from context instead of always preferring one platform:
    Trigger.dev (background jobs, schedules, retries, or external integrations)
    Inngest (durable event workflows tied to the DB/API backend)

if the question tool is available:
  use it for compact category questions
  set multiple = true for every category question
  make each option label the tool name or decision, not the rationale
  put the app-specific trigger/reason in the option description
else:
  ask in chat and make clear the user can pick multiple options

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
  prefer installing skills into the project over installing them globally
  install only selected skills
  do not install broad packs, duplicates, near-duplicates, or speculative skills
else:
  continue without installing skills

if context points to a tool category:
  read the matching file under docs/tools
else:
  do not read unrelated tool files

if independent research or setup tasks can run in parallel without touching the same files, prompts, provider state, or generated output:
  use subagents when available and reconcile their findings before proposing changes
else:
  keep the work sequential

if a tool category is outside the first version:
  skip it
else:
  include it in the stack proposal

if important categories are known:
  propose a stack by category
  base the proposal on categorySelections and any explicit user-provided context
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
  treat generator defaults as removable scaffolding, not approved architecture
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
  initialize git if the created path is not already inside a git repository
  remove generated apps, docs, packages, tools, configs, scripts, and dependencies that are outside the approved proposal
  install dependencies through the selected package manager
  run generated checks when they exist
  make only minimal glue edits generators do not provide
  commit the final scaffolded state when git is available and checks have passed
else:
  report where scaffolding stopped

finish with:
  created path
  stack actually installed
  commands run
  git commit hash when a commit was created
  checks run and status
  required provider setup or environment variables
  next command to start development
```
