# 0005 — No genre field; rule blocks pasted into AGENTS.md instead

- Date: 2026-10-17
- Status: accepted (amends 0002)

## Context
A single-valued "genre" did not hold: queens-game is both code (game logic, generator) and content (levels, texts). The field only chose which rule block was copied into `AGENTS.md` at adoption and confused the owner next to "kind".

## Decision
Drop `genre` from `PROJECT.md` and the registry. `rules/software.md` and `rules/content.md` are reusable blocks; `adopt.sh`/`new-project.sh` take any number of them and append to `AGENTS.md`. `kind` (project / product / practice) stays, because it changes the charter's shape.

## Alternatives considered
- Multi-valued genre — still a classification nobody needs after adoption.
- Genre by end consumer — contradicted the owner's intuition that a game is software.

## Consequences
One less thing to decide; `AGENTS.md` may be longer when both blocks apply, within the 100-line limit.
