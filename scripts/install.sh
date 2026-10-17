#!/usr/bin/env bash
# Wire the hub into each AI tool's global config via symlinks. Idempotent; never overwrites real files.
set -euo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib.sh"

echo "Kit root:"
root_display="${HUB/#$HOME/\~}"
if grep -q '^- Kit root: ' "$HUB/global/AGENTS.md"; then
  sed -i "s|^- Kit root: \`[^\`]*\`|- Kit root: \`$root_display\`|" "$HUB/global/AGENTS.md"
  echo "  set    global/AGENTS.md -> $root_display"
else
  die "global/AGENTS.md has no '- Kit root:' line"
fi

echo "Global instructions:"
link_if_absent "$HUB/global/AGENTS.md" "$HOME/.claude/CLAUDE.md"   # Claude Code
link_if_absent "$HUB/global/AGENTS.md" "$HOME/.codex/AGENTS.md"    # OpenAI Codex
link_if_absent "$HUB/global/AGENTS.md" "$HOME/.agents/AGENTS.md"   # future-proof, harmless

echo "Skills:"
for dir in "$HUB"/skills/*/; do
  s="$(basename "$dir")"
  link_if_absent "$dir" "$HOME/.claude/skills/$s"   # Claude Code
  link_if_absent "$dir" "$HOME/.codex/skills/$s"    # Codex (follows symlinks)
  link_if_absent "$dir" "$HOME/.agents/skills/$s"   # open-standard location (Codex, Cursor, others)
done
echo "Roles (Claude Code subagents):"
for f in "$HUB"/roles/*.md; do
  r="$(basename "$f" .md)"; [[ "$r" == README ]] && continue
  link_if_absent "$f" "$HOME/.claude/agents/$r.md"
done
echo "Done. Restart running assistants to pick up changes."
