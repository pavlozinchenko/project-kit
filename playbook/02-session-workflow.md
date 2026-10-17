# 02 — Session workflow

A *session* is one sitting with one AI assistant on one project. Any assistant must be able to run it.

## Start (skill: `start-session`)
1. Read `AGENTS.md`, `docs/PROJECT.md`, the newest file in `docs/journal/`, and any ADR with status `proposed`. Do not read `docs/BACKLOG.md` or `docs/QUESTIONS.md` unless the matching list has room or the user asks.
2. Restate in 3–5 lines: current status, the top of **Next tasks**, anything blocking.
3. Propose a plan for this session (1–5 items). Wait for approval or correction before editing.

## Work
- One item at a time. After each: show what changed, how it was verified, what is next.
- Ask before: deleting anything, touching live data or published content, sending messages to other people, large rewrites, changing the finish line.
- When a non-obvious choice is made (approach, structure, tool, trade-off), stop and run `record-decision`.
- If stuck after 2–3 attempts, widen the search instead of retrying the same thing.

## End (skill: `end-session`)
1. Update `docs/PROJECT.md`: **Status**, **Next tasks** (5–10 rows, sorted H → M → L), **Open questions** (max 5). Overflow goes to `docs/BACKLOG.md` and `docs/QUESTIONS.md` (unlimited, read on demand). An answered question is removed: its answer lives in an ADR or a task row; a dropped one goes to `QUESTIONS.md` → Dropped with reason.
2. Append `docs/journal/YYYY-MM-DD.md` using `templates/journal-entry.md`: what was done, decisions, verification, next.
3. Update the project's line in `projects.md` in the hub if stage/status changed.
4. If the project is under git, commit only if asked; otherwise list what changed and where it was saved.
5. Check sizes: `AGENTS.md` ≤ 100 lines, `docs/PROJECT.md` ≤ 120 (`05-size-limits.md`); report overruns, do not cut silently.

## Why this shape
It makes the project resumable from files alone, so switching from Claude to Codex to a local model mid-project costs nothing.
