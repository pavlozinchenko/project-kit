# 04 — Tool matrix (last verified 2026-10-17)

| Artifact in a project | Claude Code | OpenAI Codex | Cursor / Copilot / Gemini CLI | Local / open models |
|------------------------|-------------|--------------|-------------------------------|---------------------|
| `AGENTS.md` (canonical) | via `CLAUDE.md` shim `@AGENTS.md`; recent versions also fall back to it natively when no `CLAUDE.md` | native | native | paste or attach as system context |
| `CLAUDE.md` | native | ignored | ignored | — |
| `.agents/skills/*/SKILL.md` (only if the project has its own) | via symlink `.claude/skills -> ../.agents/skills` | native | native (open Agent Skills standard) | read on demand |
| `docs/PROJECT.md`, `docs/journal/`, `docs/decisions/` | read by `start-session` skill | same | same | same — plain files |
| `<kit>/roles/*.md` | native subagent via symlink in `~/.claude/agents/` | via `review` skill wrapper | via skill wrapper | paste as system prompt |
| MCP servers | `.mcp.json` | `~/.codex/config.toml` | per tool | per runtime |

Global (user-level) preferences:

| Tool | Reads | Wired by `scripts/install.sh` |
|------|-------|-------------------------------|
| Claude Code | `~/.claude/CLAUDE.md`, `~/.claude/skills/*/` | symlinks to `global/AGENTS.md` and `skills/*` |
| Codex | `~/.codex/AGENTS.md`, `~/.codex/skills/`, `~/.agents/skills/` | symlinks to the same |
| Others | `~/.agents/skills/` where supported | symlink |

Policy:
- Vendor-specific files contain **no content**, only pointers (import line or symlink).
- The kit's location is written in exactly one place: the "Kit root:" line of `global/AGENTS.md`, which `install.sh` rewrites and every tool loads globally. Project files and skills write `<kit>/...` and never hard-code the path.
- MCP configuration is per tool by nature; document *which* servers a project needs in its `AGENTS.md` under "Tools", and keep each tool's config file minimal.
- Re-verify this table when a tool changes its discovery rules; update the date in the heading.
