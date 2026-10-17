# 0001 — AGENTS.md is canonical; other tools get shims

- Date: 2026-10-17
- Status: accepted

## Context
Pavlo uses Claude Code and OpenAI Codex and wants to switch freely, including to open models. Each tool has its own instruction file name and skill directory.

## Decision
`AGENTS.md` holds all project instructions. `CLAUDE.md` contains only `@AGENTS.md`. Project-specific skills, when a project has any, live in `.agents/skills/` with `.claude/skills` symlinked to it; nothing is scaffolded until then. Global preferences live in `global/AGENTS.md` and are symlinked into each tool's home config by `scripts/install.sh`. Role cards in `roles/` double as Claude Code subagents and are wrapped as skills for other tools.

## Alternatives considered
- Maintain parallel `CLAUDE.md` and `AGENTS.md` with the same content — drifts.
- Pick one vendor — contradicts the goal.

## Consequences
Zero vendor content to maintain; the tool matrix (`playbook/04-tool-matrix.md`) must be re-verified when tools change discovery rules.
