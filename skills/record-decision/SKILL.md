---
name: record-decision
description: Write an Architecture/Project Decision Record. Use when a non-obvious choice is made (framework, format, hosting, trade-off), when the user says "let's go with X", "запиши рішення", "record decision", or when reversing an earlier decision.
---

# Record decision

1. Determine the next number: highest `NNNN` in `docs/decisions/` plus one (start at `0001`).
2. Copy `~/Git/project-kit/templates/adr-template.md` to `docs/decisions/NNNN-short-kebab-title.md`.
3. Fill Context, Decision, Alternatives, Consequences. 10–30 lines total, hard limit 30. Status `accepted` if the user already chose; otherwise `proposed`.
4. If it supersedes an older ADR, set that one's status to `superseded by NNNN`.
5. Mention the ADR in today's journal entry under **Decisions**.
