# 0008 — Kit location is stated once, in the global instructions

- Date: 2026-10-17
- Status: accepted

## Context
Project files, skills and templates hard-coded `~/Git/project-kit/...`. Renaming or moving the kit (done twice today) meant editing ~15 files, and anyone cloning the kit to another path would have to do the same.

## Decision
`global/AGENTS.md` carries one line, `- Kit root: \`<path>\``, rewritten by `scripts/install.sh` from its own location. Every tool loads that file globally. Skills, roles, templates and project docs refer to `<kit>/...` and never contain the path.

## Alternatives considered
- Environment variable — invisible to tools that do not run a shell.
- Relative paths from the symlinked skill files — fragile and unreadable for a model.

## Consequences
Moving the kit = `mv` + `install.sh`. Project repos contain no machine-specific paths.
