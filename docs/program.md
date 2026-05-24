# Bootstrap Program

This is the skill's control flow in plain English. Follow it like code.

```text
when the user asks to bootstrap, scaffold, create, initialize, or choose a stack for a new project:
  start a bootstrap session

bootstrap session:
  collect project context by category
  while important context is missing:
    ask only the missing high-impact questions
    accept related answers the user volunteers
    do not ask questions whose answer can safely default later

  consider skill support
  if a specific category would benefit from an external skill:
    search for a small number of relevant official or reputable skills
    summarize the useful candidates briefly
    ask before installing any skill unless the user already approved setup installs
    install only the selected skill or skills
    do not install broad packs, duplicates, near-duplicates, or speculative skills

  choose the relevant tool categories
  read only the matching files under docs/tools
  skip categories that are out of scope for the first version

  produce a stack proposal by category
  include the commands that will be run
  include what will intentionally not be configured yet
  ask the user to approve or change the proposal

  while the user changes the proposal:
    update only the affected category or categories
    keep unrelated approved choices stable
    ask for approval again

  after approval:
    run official project generators and package init commands
    avoid hand-writing framework boilerplate that a generator should create
    if a command would overwrite files, stop and ask
    if a provider login or dashboard setup is required, stop and ask
    if a CLI asks an architectural question, stop and ask or rerun with explicit flags

  after scaffolding:
    install dependencies through the selected package manager
    run generated checks when they exist
    make only minimal glue edits that generators do not provide

  finish with:
    created path
    stack actually installed
    commands run
    checks run and status
    required provider setup or environment variables
    next command to start development
```

Context categories:

- product shape
- user and account model
- data shape
- realtime, jobs, workers, or workflows
- UI surface and styling constraints
- repo shape
- deployment target
- package/runtime preferences
- testing and quality expectations
- integrations and product add-ons

Use the `question` tool when available. Otherwise ask in chat.

Skills CLI reference: use `npx skills find <topic>` to search and `npx skills add <url-or-package> --skill <name>` to install a selected skill.
