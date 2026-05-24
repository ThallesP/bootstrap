# Bootstrap

Bootstrap is an agent skill for starting modern TypeScript apps with a small English `if` / `else` program.

## What's Included

- `SKILL.md` contains the installable skill.
- `docs/program.md` defines the sequential `if` / `else` bootstrap flow.
- `docs/tools/` contains category-specific tool notes and avoid cases.
- `setup` installs the skill locally for OpenCode and Claude.

## Install

```sh
./setup
```

Target one host if needed:

```sh
./setup --host opencode
./setup --host claude
```

## Use

```text
Use the bootstrap skill. I want to create a new app for internal tools workflows.
```

The skill should ask only for missing high-impact context, avoid speculative setup, and ask before installing extra skills or running scaffold commands.
