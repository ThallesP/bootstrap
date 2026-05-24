#!/usr/bin/env bash
set -euo pipefail

# skills.sh-compatible entrypoint: install this checked-out repository as the bootstrap skill.
# Usage from repo root: ./skills.sh --host opencode

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
exec "$script_dir/setup" "$@"
