---
name: new-project
description: Scaffold a new personal project, or adopt an existing directory into the playbook convention. Use when the user says "new project", "новий проєкт", "set this repo up", "adopt", or asks to add AGENTS.md/CLAUDE.md to a repo.
---

# New project / adopt

1. Ask (or infer) the target path and which rule blocks apply: `software` (code that runs), `content` (things people read or view), or both (see `<kit>/rules/`).
2. Run `<kit>/scripts/new-project.sh <path> [--no-git] [software] [content]` for a new directory, or `<kit>/scripts/adopt.sh <path> [software] [content]` for an existing one. Both are idempotent and never overwrite existing files.
3. Open the generated `docs/PROJECT.md`. Decide with the user which kind it is: finite **project** (done-when), ongoing **product** (a site, game, app, brand: healthy-when) or **practice** (accounting, yard, learning: a direction, not a goal). Fill **Goal**, **Non-goals**, the **Finish line** in the matching form, and the first rows of **Next tasks** with priorities. Keep each under 5 lines.
4. Fill "Project specifics" in `AGENTS.md`: run command, test command, anything forbidden. Keep the whole file under 100 lines (see `playbook/05-size-limits.md`).
5. Add or update the row in `<kit>/projects.md`.
6. Project-specific skills are not scaffolded. If one is ever needed: create `.agents/skills/<name>/SKILL.md` and the symlink `.claude/skills -> ../.agents/skills` (`ln -s ../.agents/skills .claude/skills`).
7. Finish by running the `start-session` procedure so the first plan exists.
