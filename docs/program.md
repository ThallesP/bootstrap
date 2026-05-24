# Bootstrap Program

This is the skill flow in plain English. Keep it simple and run it in order.

Start when the user asks to bootstrap, scaffold, create, initialize, or choose a stack for a new project.

Collect context by category.

Ask only for missing high-impact context. Accept related answers the user already gave. Do not ask questions whose answers can safely default later.

Use these context categories:

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

Consider external skill support before scaffolding.

Search for relevant official or reputable skills only when a category would clearly benefit from one. Use `npx skills find <topic>` to search and `npx skills add <url-or-package> --skill <name>` to install a selected skill.

Summarize useful skill candidates briefly. Ask before installing unless the user already approved setup installs. Install only the selected skill or skills. Do not install broad packs, duplicates, near-duplicates, or speculative skills.

Choose relevant tool categories.

Read only the matching files under `docs/tools`. Skip categories that are out of scope for the first version.

Propose a stack by category.

Include the commands that will run. Include what will intentionally not be configured yet. Ask the user to approve or change the proposal.

If the user changes the proposal, update only the affected category or categories. Keep unrelated approved choices stable. Ask for approval again.

After approval, run official project generators and package init commands.

Do not hand-write framework boilerplate that a generator should create.

Stop and ask if a command would overwrite files, a provider login is required, dashboard setup is required, or a CLI asks an architectural question.

After scaffolding, install dependencies through the selected package manager. Run generated checks when they exist. Make only minimal glue edits that generators do not provide.

Finish with the created path, stack actually installed, commands run, checks run and status, required provider setup or environment variables, and next command to start development.
