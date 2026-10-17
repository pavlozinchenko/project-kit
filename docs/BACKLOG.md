# Backlog — playbook hub

Not read at session start. Pulled from when `docs/PROJECT.md` → Next tasks has room. No size limit.

Order: first by *when* (the sections below), then by priority inside a section (H → M → L).
Priority meanings: `<kit>/playbook/06-priorities.md`.

## Next (first candidates for Next tasks)
- [M] Adopt justpavlo.me (product; rules: content, maybe software for layouts)
- [M] Adopt ФОП-асистент (product; rules: software)

## Later
- [L] A `tester` role for software entries (read-only on src, may write/run tests) — only if a real need appears twice
- [L] A `reader` role for content entries (reads as the target audience) — same rule
- [L] Script to lint sizes across all adopted entries (`wc -l` vs playbook/05)

## Someday
- Turn the hub into a public template repo once stable

## Rejected (keep, with reason, so it is not proposed again)
- "рішення" as a kind name — collides with ADR in Ukrainian (ADR 0003)
- genre as a field — single value did not fit mixed entries (ADR 0005)
- separate template for ongoing entries — two templates invite hesitation (ADR 0002)
