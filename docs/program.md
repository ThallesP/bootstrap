# Bootstrap Program

This is the skill flow. It is plain English, but should be followed like code.

```text
on bootstrap request -> start

start -> collect context

collect context -> ask for missing high-impact categories only
collect context -> accept context already provided by the user
collect context -> default anything that is safe to decide later
collect context -> continue when the important categories are known

categories = product shape, user/account model, data shape, realtime/jobs/workers/workflows, UI/styling constraints, repo shape, deployment target, package/runtime preferences, testing/quality expectations, integrations/add-ons

questions -> use question tool when available
questions -> use chat when question tool is unavailable

skills -> consider before scaffolding
skills -> search only when a category clearly benefits from external skill support
skills -> use npx skills find <topic> to search
skills -> use npx skills add <url-or-package> --skill <name> to install the selected skill
skills -> summarize useful candidates briefly
skills -> ask before installing unless setup installs are already approved
skills -> install only selected skills
skills -> never install broad packs, duplicates, near-duplicates, or speculative skills

tools -> choose relevant categories
tools -> read only matching files under docs/tools
tools -> skip categories outside the first version

proposal -> present stack by category
proposal -> include commands to run
proposal -> include what will not be configured yet
proposal -> ask for approval or changes

change requested -> update only affected categories
change requested -> keep unrelated approved choices stable
change requested -> return to proposal

approved -> run official generators and package init commands
approved -> do not hand-write framework boilerplate that a generator should create

stop -> command would overwrite files
stop -> provider login is required
stop -> dashboard setup is required
stop -> CLI asks an architectural question

scaffolded -> install dependencies through selected package manager
scaffolded -> run generated checks when they exist
scaffolded -> make only minimal glue edits generators do not provide

finish -> report created path
finish -> report stack actually installed
finish -> report commands run
finish -> report checks run and status
finish -> report required provider setup or environment variables
finish -> report next command to start development
```
