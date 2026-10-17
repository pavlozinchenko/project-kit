#!/usr/bin/env bash
# Usage: new-project.sh <path> [--no-git] [software] [content]
set -euo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
[[ $# -ge 1 ]] || die "usage: new-project.sh <path> [--no-git] [software] [content]"
target="$1"; shift
[[ -e "$target" ]] && die "'$target' already exists; use adopt.sh"
use_git=1; blocks=()
for a in "$@"; do
  if [[ "$a" == "--no-git" ]]; then use_git=0; else check_rule "$a"; blocks+=("$a"); fi
done
mkdir -p "$target"; root="$(cd "$target" && pwd)"
if (( use_git )); then (cd "$root" && git init -q && echo "  git    initialised (no commit)"); fi
scaffold_project "$root" "${blocks[@]}"
next_message "$root"
