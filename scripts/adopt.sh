#!/usr/bin/env bash
# Usage: adopt.sh <existing-path> [software] [content]   — adds the convention without touching existing files.
set -euo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"
[[ $# -ge 1 ]] || die "usage: adopt.sh <existing-path> [software] [content]"
[[ -d "$1" ]] || die "'$1' is not a directory"
root="$(cd "$1" && pwd)"; shift
for a in "$@"; do check_rule "$a"; done
scaffold_project "$root" "$@"
next_message "$root"
