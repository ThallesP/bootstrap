# Bootstrap

Bootstrap is an agent skill for starting modern TypeScript apps. It asks for product context, recommends a practical stack, then uses official generators and package CLIs instead of hand-writing framework boilerplate.

## What's Included

- `SKILL.md` contains the installable skill.
- `docs/program.md` defines the decision flow.
- `docs/tool-matrix.md` lists stack recommendations and avoid cases.
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
