# 0004 — Backlog and questions overflow are separate, local, git-ignored files

- Date: 2026-10-17
- Status: superseded by 0007 (files are now committed); section now "Next tasks", 10 rows (0006)

## Context
`PROJECT.md` → Next steps is capped at 7 items (ADR-free size limits, playbook/05). Real TODO lists are longer.

## Decision
Long lists live in `docs/BACKLOG.md` (by when, then priority) and `docs/QUESTIONS.md` (Open overflow / Dropped), unlimited, not read at session start. Pavlo chose to git-ignore it: it stays on this machine and is not shared with contributors.

## Alternatives considered
- Commit the backlog — shares half-baked ideas with contributors; rejected by owner.
- GitHub Issues for software repos — still possible per project; `BACKLOG.md` would then hold one pointer line.

## Consequences
The backlog does not sync between machines and is not recoverable from git. Everything needed to *resume* a project must still be in `PROJECT.md`, never only in the backlog.
