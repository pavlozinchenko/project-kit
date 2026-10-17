#!/usr/bin/env bash
# Shared helpers. Sourced by the other scripts.
HUB="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RULES=(software content)

die() { echo "error: $*" >&2; exit 1; }

check_rule() {
  local g="$1"
  for x in "${RULES[@]}"; do [[ "$x" == "$g" ]] && return 0; done
  die "unknown rule block '$g' (expected: ${RULES[*]})"
}

# write_if_absent <dest> <content-from-stdin>
write_if_absent() {
  local dest="$1"
  if [[ -e "$dest" ]]; then echo "  keep   $dest"; cat >/dev/null; return; fi
  mkdir -p "$(dirname "$dest")"
  cat > "$dest"; echo "  create $dest"
}

# link_if_absent <target> <link>
link_if_absent() {
  local target="$1" link="$2"
  if [[ -L "$link" ]]; then echo "  keep   $link -> $(readlink "$link")"; return; fi
  [[ -e "$link" ]] && { echo "  skip   $link exists and is not a symlink"; return; }
  mkdir -p "$(dirname "$link")"
  ln -s "$target" "$link"; echo "  link   $link -> $target"
}

# render <template> <name> [rule-block...]
render() {
  local tmpl="$1" name="$2"; shift 2
  local blocks="" r
  for r in "$@"; do blocks+="$(cat "$HUB/rules/$r.md")"$'\n'; done
  [[ -z "$blocks" ]] && blocks="- "$'\n'
  # Values go through ENVIRON (no escape processing) and a plain index/substr replace (no gsub "&" magic).
  NAME="$name" DATE="$(date +%F)" BLOCKS="$blocks" awk '
    function rep(s, pat, val,   i, out) {
      while ((i = index(s, pat)) > 0) { out = out substr(s, 1, i - 1) val; s = substr(s, i + length(pat)) }
      return out s
    }
    { if (index($0, "{{RULE_BLOCKS}}")) { printf "%s", ENVIRON["BLOCKS"]; next }
      print rep(rep($0, "{{PROJECT_NAME}}", ENVIRON["NAME"]), "{{DATE}}", ENVIRON["DATE"]) }' "$tmpl"
}

next_message() { echo "Next: set Kind and fill Goal / Non-goals / Finish line in $1/docs/PROJECT.md; add a row to $HUB/projects.md"; }

# ensure_gitignore <file>: add every line of the template that is missing (never removes anything)
ensure_gitignore() {
  local f="$1" line
  [[ -e "$f" ]] || { cp "$HUB/templates/gitignore.tmpl" "$f"; echo "  create $f"; return; }
  while IFS= read -r line; do
    [[ -z "$line" || "$line" == \#* ]] && continue
    grep -qxF -- "$line" "$f" || { echo "$line" >> "$f"; echo "  append $f: $line"; }
  done < "$HUB/templates/gitignore.tmpl"
}

# scaffold_project <abs-path> [rule-block...]
scaffold_project() {
  local root="$1" name; shift
  name="$(basename "$root")"
  mkdir -p "$root/docs/decisions" "$root/docs/journal"
  render "$HUB/templates/AGENTS.md.tmpl"  "$name" "$@" | write_if_absent "$root/AGENTS.md"
  cat "$HUB/templates/CLAUDE.md.tmpl"                             | write_if_absent "$root/CLAUDE.md"
  render "$HUB/templates/PROJECT.md.tmpl" "$name" | write_if_absent "$root/docs/PROJECT.md"
  render "$HUB/templates/BACKLOG.md.tmpl" "$name" | write_if_absent "$root/docs/BACKLOG.md"
  render "$HUB/templates/QUESTIONS.md.tmpl" "$name" | write_if_absent "$root/docs/QUESTIONS.md"
  [[ -d "$root/.git" ]] && ensure_gitignore "$root/.gitignore"
  touch "$root/docs/decisions/.gitkeep" "$root/docs/journal/.gitkeep"
}
