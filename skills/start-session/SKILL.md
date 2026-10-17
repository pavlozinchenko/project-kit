---
name: start-session
description: Begin a working session on a personal project. Use at the start of any session, or when the user says "let's continue", "де ми зупинились", "start session", "what's next here".
---

# Start session

1. Locate the project root (directory containing `AGENTS.md` and `docs/PROJECT.md`). If `docs/PROJECT.md` is missing, say so and offer to run `new-project`/adopt instead.
2. Read, in order: `AGENTS.md`, `docs/PROJECT.md`, the newest file in `docs/journal/` (by filename date), and any ADR whose status is `proposed`. Do not read `docs/BACKLOG.md` or `docs/QUESTIONS.md` unless the corresponding table has room or the user asks.
3. Report in at most 5 lines:
   - current **Status** and stage
   - the top rows of **Next tasks**: any `active` task first, otherwise the highest-priority `planned` one
   - **Open questions**, if any block the top task
4. Propose a plan for this session: 1–5 concrete items derived from **Next tasks**. Do not start editing until the user approves or adjusts the plan.
5. Keep the plan visible; after each finished item, say what changed and how it was verified.
