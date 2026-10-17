# 0006 — Charter shape: Next tasks table, no People / Location / Created

- Date: 2026-10-17
- Status: accepted (amends 0003)

## Context
The first charter had Location, Created, People, an Initiatives table and a separate Next steps list. The owner found Location/Created redundant, People of no clear benefit, and two "what's next" lists confusing.

## Decision
`docs/PROJECT.md` header holds only Kind and Stage. One **Next tasks** table (Task | Done when | Priority H/M/L | Status | Updated), 5–10 rows sorted H → M → L, with "Other tasks: docs/BACKLOG.md" beneath. **Open questions** is a plain dated list, max 5, no priority: an answered question becomes an ADR or a task row, a dropped one goes to `docs/QUESTIONS.md` → Dropped with reason. No People section.

## Alternatives considered
- Keep Initiatives and Next steps as two levels — rejected, same confusion as genre vs kind.
- Questions as a prioritised table — rejected by owner: questions are not tasks.

## Consequences
Charter stays under ~60 lines in practice; priorities need definitions (`playbook/06-priorities.md`).
