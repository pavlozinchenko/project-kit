---
name: end-session
description: Close a working session so any AI tool can resume later. Use when the user says "finish", "wrap up", "на сьогодні все", "end session", or when work is complete.
---

# End session

1. Rewrite the **Status (date)** section of `docs/PROJECT.md` (max 5 lines, today's ISO date in the heading). Rewrite, never append.
2. Update **Next tasks**: set status/date on touched rows; move `done` and `dropped` rows out (done → mention in journal; dropped → `docs/BACKLOG.md` → Rejected with reason). Keep 5–10 rows sorted H → M → L. New ideas that are not among the top 10 go to the backlog, not here. If fewer than 5 rows remain, pull the top of the backlog's "Next" section.
3. Update **Open questions**: an answered question is removed and its answer lands in an ADR (decision) or in a task row (work); a dropped one goes to `docs/QUESTIONS.md` → Dropped with a reason; new ones are appended (max 5, overflow to `docs/QUESTIONS.md` → Open).
4. Create `docs/journal/YYYY-MM-DD.md` from the journal template (if a file for today exists, append a `## Session 2` block). Fill: assistant used, done, decisions (link ADRs), how verified, next. Max 30 lines.
5. If kind, stage or one-line status changed, update the row in `<kit>/projects.md`.
6. If under git: list uncommitted changes, commit only if asked. Otherwise state where the updated files are.
7. Check sizes (`wc -l`): `AGENTS.md` ≤ 100, `docs/PROJECT.md` ≤ 120. If exceeded, say so and propose what to cut; do not cut silently.
8. Final message: 3 lines max — what was done, what is next, what needs the user.
