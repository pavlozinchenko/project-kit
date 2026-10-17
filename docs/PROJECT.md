# project-kit

| Field | Value |
|-------|-------|
| Kind | product |
| Stage | active |

## Goal
One vendor-neutral place that defines how I work on personal projects with AI assistants (Claude Code, Codex, others), so that any assistant can resume any project from files alone.

## Non-goals
- Not a task manager or calendar.
- Not a place for project content itself; projects live in their own directories.
- No vendor-specific content; shims and symlinks only.

## Finish line
Healthy when:
- Every active entry in `projects.md` has `AGENTS.md` + `docs/PROJECT.md` and its last journal entry is newer than its last substantive change.
- `scripts/install.sh` runs clean and all core skills plus the `reviewer` role are picked up by both Claude Code and Codex.
- `playbook/04-tool-matrix.md` was re-verified within the last 6 months.
- The hub has at most ~5 roles and ~4 rule blocks; anything beyond that needs an ADR.

## Status (2026-10-17)
Lives in `~/Git/project-kit` (moved from `~/Claude` on 2026-10-17; `~/Claude` is now a general Claude Code workspace). Process defined in one long session: two rule blocks (`software`, `content`), five skills, one role (`reviewer`), scripts tested in a sandbox, `install.sh` run (symlinks in place, Claude Code picked up skills and the agent live). Hub adopted as its own product; queens-game adopted as the first pilot. Nothing committed yet.

## Next tasks
| Task | Done when | Priority | Status | Updated |
|------|-----------|----------|--------|---------|
| Pavlo reviews the docs | feedback given on `README.md`, `playbook/02`, hub and queens-game charters | H | active | 2026-10-17 |
| Define H/M/L | `playbook/06-priorities.md` filled in by Pavlo | H | planned | 2026-10-17 |
| First commit | hub committed after review, incl. backlog and questions | H | planned | 2026-10-17 |
| Confirm Codex sees skills | fresh Codex session lists the 5 skills | M | planned | 2026-10-17 |
| Pilot on real projects | three entries adopted, each lived through 5 start/end sessions (1/3 adopted) | M | active | 2026-10-17 |
| Decide docs language | open question below answered; translate if needed | L | planned | 2026-10-17 |

Other tasks: `docs/BACKLOG.md`.

## Open questions
- (2026-10-17) What do H / M / L mean exactly? → answer goes into `playbook/06-priorities.md`
- (2026-10-17) Docs in English, or translate the playbook to Ukrainian?
- (2026-10-17) Does this Claude Code read `AGENTS.md` natively (v2.1.277+)? If yes, drop the `CLAUDE.md` shim from templates
- (2026-10-17) Should public repos commit the journal, or only `PROJECT.md` + ADRs? (default: commit; exceptions per repo by ADR)

Other questions: `docs/QUESTIONS.md`.

## How to resume
Read this file, then `docs/journal/` newest entry, then `AGENTS.md`. Run the `start-session` skill.

## Process
This product follows its own playbook (`playbook/`): sessions start by reading this file, work in small approved steps, and end by updating **Status** and **Next tasks** and adding a journal entry. Decisions go to `docs/decisions/`.
