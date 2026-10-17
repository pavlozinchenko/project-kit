# roles

Role cards for specialised agents. One Markdown file per role: purpose, inputs, what it reads, what it may do, procedure, strict output format.

A role is shared across all projects; project context comes from the project's own `AGENTS.md` and `docs/PROJECT.md`, which every role reads first.

## How tools consume a role
| Tool | Mechanism | Wired by |
|------|-----------|----------|
| Claude Code | the file is a valid subagent (YAML frontmatter `name`, `description`, `tools`); symlinked into `~/.claude/agents/` | `scripts/install.sh` |
| Codex, Cursor, others | skill wrapper `skills/<role-verb>/SKILL.md` says "act as this role, read `roles/<name>.md`" | `scripts/install.sh` (skills) |
| Any model | paste the file body as the system prompt | manual |

## Adding a role
Add one only when the same pain appeared twice. Keep the output format strict: it matters more than the persona. Current roles: `reviewer`.
