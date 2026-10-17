# project-kit

A kit for running personal projects with AI assistants: one vendor-neutral set of
Markdown files that Claude Code, OpenAI Codex, Cursor, Gemini CLI and local/open
models all read the same way. Unlike software-only frameworks, it covers any kind
of project: an app, a site, a book, a yard, a bookkeeping routine.

## Layout

| Path | Purpose |
|------|---------|
| `playbook/` | The process itself: principles, lifecycle, session workflow, decision records, tool matrix, size limits, priorities |
| `rules/` | Reusable rule blocks pasted into a project's `AGENTS.md` (`software`: things that run; `content`: things people read or view); pick any number |
| `templates/` | Files copied into every new or adopted project (incl. `BACKLOG.md` and `QUESTIONS.md`, read on demand) |
| `skills/` | Portable Agent Skills (`SKILL.md`, open standard) that encode the workflow as runnable procedures |
| `roles/` | Role cards for specialised agents (currently `reviewer`); valid Claude Code subagents, wrapped as skills for other tools |
| `global/AGENTS.md` | My personal, project-independent preferences; symlinked into each tool's global config |
| `scripts/` | `install.sh` (wire this hub into the tools), `new-project.sh`, `adopt.sh` |
| `projects.md` | Registry of all entries with kind, location, status |
| `docs/` | The hub's own charter, ADRs and journal (it follows its own process); `BACKLOG.md` and `QUESTIONS.md` are read on demand |

## How each AI tool consumes this

See `playbook/04-tool-matrix.md`. Short version:

- **Canonical file is `AGENTS.md`.** `CLAUDE.md` is a one-line shim (`@AGENTS.md`).
- **Skills live in `skills/` here** (global). A project gets its own `.agents/skills/` only when it needs one; `.claude/skills` is then a symlink to it.
- **Process state lives in `docs/`** inside each project: `PROJECT.md`, `decisions/`, `journal/`.
- Nothing vendor-specific is written inside the canonical files. Shims and symlinks absorb the differences.
- **The kit's path is written once**, in the "Kit root:" line of `global/AGENTS.md`, which `install.sh` keeps current. Projects and skills write `<kit>/...`, never a path, so cloning the kit elsewhere needs only `install.sh`.

## Getting started

```bash
scripts/install.sh          # symlink global prefs, skills and roles into ~/.claude, ~/.codex, ~/.agents
scripts/adopt.sh ~/Git/queens-game software content   # add the convention to an existing repo, with both rule blocks
scripts/new-project.sh ~/Git/my-thing software        # scaffold a new one (add --no-git to skip git)
```

## What counts as a project

Anything with a goal and a finish line: an application, an article, a book, a website. Finite things are **projects** ("done when"). Ongoing things are **products** (a site, a game, an app: "healthy when") or **practices** (accounting, the yard, learning: a direction, not a goal). All carry a short, prioritised **Next tasks** table; the rest waits in a local backlog. See `playbook/01-project-lifecycle.md`. The process files are the same for all; `AGENTS.md` takes whichever rule blocks apply.

## The minimum that makes it work

Two phrases and two files. At the start of a sitting say "start session" (or "де ми зупинились"); at the end say "end session" (or "на сьогодні все"). The assistant reads and then rewrites `docs/PROJECT.md` and adds a `docs/journal/` entry. Everything else in this hub is reference you read once.
