# 03 — Decision records (ADR)

Location: `docs/decisions/NNNN-short-title.md` in each project. Template: `templates/adr-template.md`.

Record a decision when at least one holds:
- a future session would plausibly ask "why is it like this?"
- it constrains later work (structure, format, tooling, naming, who is involved)
- it reverses or amends an earlier decision
- the owner explicitly said "let's go with X"
- an **Open question** in `docs/PROJECT.md` got answered and the answer is not just a task

Keep ADRs short (10–30 lines, hard limit 30; see `05-size-limits.md`). Status values: `proposed`, `accepted`, `superseded by NNNN`, `rejected`.

Do **not** record routine choices (variable names, trivial libraries) or anything already obvious from the code.
