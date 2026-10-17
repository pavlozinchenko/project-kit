# 05 — Size limits

Why: `AGENTS.md` files load into context at every session start, and long instructions are followed worse than short ones. Everything else is read on demand, so the cost is attention, not tokens. Limits keep both in check.

| File | Limit | Loaded | Enforced by |
|------|-------|--------|-------------|
| `global/AGENTS.md` | 40 lines | every session, every project | owner; trim when adding |
| project `AGENTS.md` | 100 lines (incl. pasted rule blocks) | every session | `new-project`, `end-session` warn when exceeded |
| `docs/PROJECT.md` → Status | 5 lines, **rewritten** not appended | session start | `end-session` |
| `docs/PROJECT.md` → Next tasks | 10 rows | session start | `end-session` |
| `docs/PROJECT.md` → Open questions | 5 items | session start | `end-session` |
| `docs/PROJECT.md` whole file | 120 lines | session start | `end-session` warns |
| one `docs/journal/` entry | 30 lines | session start (newest only) | `end-session` |
| one ADR | 30 lines | on demand | `record-decision` |
| `docs/BACKLOG.md`, `docs/QUESTIONS.md` | none | only when the matching list has room or on request | — |
| a `SKILL.md` | 40 lines | on invocation | hub owner |
| a role card | 80 lines | on invocation | hub owner |

Rules:
- When a file hits its limit, shorten it; do not split it into two files that are both auto-loaded.
- Journal history is never trimmed: only the newest entry is read, so old entries cost nothing.
- Old ADRs are never deleted; superseded ones keep their status line and nothing else changes.
- Detail that does not fit belongs in the project's own docs or code comments, linked from `AGENTS.md`, not inlined.
