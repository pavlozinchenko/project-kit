# 0002 — Two genres only; areas with initiatives instead of forced done-when

- Date: 2026-10-17
- Status: accepted; "area" naming superseded by 0003; genre as a field superseded by 0005

## Context
"Project" means anything with a goal, not only software: texts, a site, coordinating people. A first draft had four domain genres and a mandatory "done when", which did not fit an ongoing personal site.

## Decision
Genres are `software` (things that run) and `content` (things people read or view). New genres only when a real project needs one. Each entry in `projects.md` is a finite **project** ("done when") or an ongoing **area** ("healthy when") that contains finite **initiatives** with their own done-when. Small upkeep is a journal line, not an initiative.

## Alternatives considered
- Separate template for areas — two templates invite hesitation; one field with two forms is enough.
- Keep four genres — two of them had no real project behind them.

## Consequences
The hub itself is an area. `PROJECT.md` gained Kind, Finish line, Initiatives and People sections; `start-session`/`end-session` read and update Initiatives.
