# AGENTS.md — this repository (the playbook hub)

You are editing the process documentation itself, not a product.

- Keep every file plain Markdown (CommonMark + YAML frontmatter where noted). No tool-specific syntax in canonical files.
- `AGENTS.md` is canonical; `CLAUDE.md` must stay a one-line `@AGENTS.md` shim.
- Prefer short files with one purpose over long files. Link between them. Respect `playbook/05-size-limits.md`.
- When you change a convention, update `playbook/` first, then templates, then skills, then `projects.md` if affected.
- Write dates as ISO-8601 (`2026-10-17`). Write in English; the owner communicates in Ukrainian in chat.
- Do not add vendor-specific directories (`.cursor/`, `.gemini/`, etc.) unless `playbook/04-tool-matrix.md` documents why.

## Rules
- Name which layer a task touches: wording, structure, or template/script mechanics. Do not mix them in one step.
- Verification means re-reading as a fresh assistant that has never seen this hub: can it act from the file alone?
- After changing a convention, grep the hub and adopted projects for the old name; stale names mislead the next session.
- Changing a convention that projects already rely on gets an ADR.
