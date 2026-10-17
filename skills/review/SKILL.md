---
name: review
description: Run an independent review of finished work as the "reviewer" role. Use when the user says "review this", "подивись свіжим оком", "перевір зміни", "зроби рев'ю", or before accepting a unit of work.
---

# Review

1. Read `<kit>/roles/reviewer.md` and adopt it fully, including the output format.
2. Build the brief: project root, what exactly to review (diff / files / document), code or text. Ask only if this cannot be inferred.
3. If the runtime supports subagents (e.g. Claude Code has the `reviewer` agent), delegate to it with the brief and the change, not with your own conclusions. Otherwise perform the review yourself in a fresh pass, re-reading the files rather than relying on memory of writing them.
4. Return the reviewer's output verbatim, then list which findings you propose to fix now. Fix nothing until the user picks.
