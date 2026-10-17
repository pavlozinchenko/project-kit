# 01 — Projects, products, practices

Three kinds of thing live under the same convention:

| Kind | Has an end? | Finish line field | Examples | Typical stage path |
|------|-------------|-------------------|----------|--------------------|
| **project** | yes | "Done when": conditions after which it closes and is archived | a tool, a migration, an article | idea → scoped → active → archived |
| **product** | no; it has tasks and sub-projects | "Healthy when": conditions that must stay true | a site, a game, an app, a brand | scoped → active ⇄ maintained, forever |
| **practice** | no; it has a direction, not a goal | "Direction": why I do this and what "better" means; optional "Healthy when" for rhythm | accounting, the yard, learning | scoped → maintained, forever |

Every entry has **Next tasks** in `docs/PROJECT.md`: 5–10 finite pieces of work with their own done-when and a priority (H/M/L, see `06-priorities.md`). For products and practices these are how work gets done at all; for projects they are the path to done-when. Everything else waits in `docs/BACKLOG.md`. Upkeep too small for a task (fix a typo, file one invoice) is just a journal line.

Rules of thumb:
- Can you write a done-when without inventing one? → project.
- No end, but there is a concrete thing people use? → product.
- No end and no thing, just an activity with a reason? → practice. Its "goal" is a vector, never reached, and that is fine.

## Stages

| Stage | Entry criterion | Required artifacts | Exit criterion |
|-------|-----------------|--------------------|----------------|
| **Idea** | A line in `projects.md` with stage `idea` | — | Decision to spend >1 session on it |
| **Scoped** | `scripts/new-project.sh` or `adopt.sh` ran | `AGENTS.md`, `CLAUDE.md`, `docs/PROJECT.md` with Kind, Goal, Non-goals, Finish line | First working increment |
| **Active** | Regular sessions, or an active task | `docs/journal/`, `docs/decisions/` as needed, `PROJECT.md` current | Done-when met (project), or no active task (product/practice) |
| **Maintained** | Product/practice with no active task | `PROJECT.md` lists upkeep and "healthy when" / "direction" | A new task starts (back to Active) |
| **Paused / Archived** | Explicit decision; archived is normal for projects, rare for products, never for a practice unless abandoned | "How to resume" section filled, `projects.md` updated | — |

Rules:
- Status lives in two places only: `projects.md` (registry, one line) and `docs/PROJECT.md` (detail). Sync them at session end.
- Changing a done-when, healthy-when or direction is a decision: record an ADR.
- Pausing is normal. Anything paused must be resumable by a fresh AI session from `docs/` alone.
- "Maintained" for a product or practice is its normal state, not a stalled one.
