# 0007 — Backlog and questions are committed, not git-ignored

- Date: 2026-10-17
- Status: accepted (supersedes 0004 on the git-ignore point)

## Context
0004 kept `docs/BACKLOG.md` and `docs/QUESTIONS.md` local so half-baked ideas stayed private. In practice that meant they did not sync between machines and could not be recovered, which contradicts "resume from files alone".

## Decision
Both files are ordinary committed files. They keep their roles: unlimited, read only on demand, overflow for the capped lists in `PROJECT.md`. `templates/gitignore.tmpl` lists only tool-local state (`.claude/settings.local.json`, `.codex/`).

## Alternatives considered
- Keep local, add a sync step — more ceremony than value.

## Consequences
Write backlog and questions as if a contributor may read them. Existing `.gitignore` lines were removed from the hub and queens-game.
