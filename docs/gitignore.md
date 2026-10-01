# Git Tracking Rules

The `.gitignore` file defines what is tracked by git and what is ignored. This ensures that shared, durable knowledge is versioned, while temporary working notes and scratchpad files are excluded.

## Tracked Files

These files are committed to the repository:

- `AGENTS.md` — Agent instructions.
- `README.md` — Human quick-start.
- `docs/` — Published documentation.
- `.agentframe/context.md` — Project overview.
- `.agentframe/decisions.md` — Recorded choices.
- `.agentframe/plans/` — Phase plans, roadmaps.
- `.agentframe/scripts/` — Project automation.

**Why tracked:** These files contain shared, durable knowledge that any team member or agent needs to understand the project.

## Ignored Files

These files are excluded from the repository:

- `.agentframe/scratch/` — Temporary working notes.
- `*.swp`, `*.bak`, `*~` — Editor temp files.
- `.DS_Store`, `Thumbs.db` — OS junk.

**Why ignored:** These files are temporary, personal, or ephemeral. They change too fast to be worth tracking, and no one else needs them.

## Example `.gitignore`

```gitignore
# Agent scratch work
.agentframe/scratch/

# Editor junk
*.swp
*.bak
*~
.DS_Store
Thumbs.db
```

## Edge Cases

### Meeting notes with decisions
- **Track them.** If a meeting note contains a decision, move it to `.agentframe/decisions.md` or `.agentframe/plans/`.
- **Ignore raw logs.** If it's just a transcript with no decisions, keep it in `.agentframe/scratch/`.

### Research notes
- **Track if it informed a decision.** If research led to an architecture choice, record it in `.agentframe/decisions.md`.
- **Ignore raw dumps.** If it's just collected links or notes, keep it in `.agentframe/scratch/`.

### Completed plans
- **Keep them tracked.** Completed plans provide historical context. Rename them with a `done-` prefix or move them to an `archive/` folder if desired.

## Rule of Thumb

**If a new person joining the project would need it, track it. If it's only useful to you right now, ignore it.**

This ensures the repository contains durable, shared knowledge while excluding temporary, personal work.
