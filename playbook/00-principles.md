# 00 — Principles

1. **Markdown is the interface.** Every instruction, decision and status an AI needs is a plain `.md` file in git. No proprietary memory, no chat history as the source of truth.
2. **One canonical file, thin shims.** `AGENTS.md` holds project instructions. `CLAUDE.md` contains only `@AGENTS.md`. Other tools read `AGENTS.md` directly.
3. **Model-agnostic wording.** Instructions describe *what* and *why*, never "use tool X" or model-specific tricks. Anything a human junior could follow, any model can follow.
4. **State outlives the session.** A session ends by writing to `docs/PROJECT.md` (Status + Next tasks) and `docs/journal/`. The next session, with any model, starts by reading them.
5. **Decisions are recorded, not remembered.** Non-obvious choices go to `docs/decisions/` as short ADRs. Memory features of individual tools are a cache, not the record.
6. **Small iterations.** Propose, get approval, change a little, verify, repeat. Never a large unreviewed batch.
7. **Kind shapes the charter; rule blocks shape `AGENTS.md`.** An entry is a finite project (done-when), an ongoing product (healthy-when) or a practice (direction). `rules/*.md` are pasted into `AGENTS.md` as needed, any number of them; the project then edits freely.
8. **Skills are procedures.** Repeating workflows (start/end session, new project, record decision) are `SKILL.md` files in the open Agent Skills format so every tool can trigger them the same way.
