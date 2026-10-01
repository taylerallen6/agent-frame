# Agent Instructions

## Project Overview
This project uses AgentFrame.

## Workflow
Follow the strict three-step flow: **Discuss/Theorize → Plan → Implement**.

1. **Discuss/Theorize:**
   - Create `.agent-data/discussion-notes/topic.md` for brainstorming.
   - Debate trade-offs and reach consensus.
2. **Plan:**
   - Create `.agent-data/plans/task-name.md`.
   - Delete the corresponding discussion notes.
3. **Implement:**
   - Execute step-by-step.
   - Check in after each step.

## Structure
- `docs/` — Published documentation (human-first).
- `.agent-data/` — Agent working memory (agent-first).
  - `context.md` — Project overview.
  - `decisions.md` — Recorded choices.
  - `plans/` — Active plans.
  - `plans/archive/` — Completed plans.
  - `discussion-notes/` — Temporary brainstorming (ignored).
  - `scratch/` — Temporary files, messy notes, downloads (ignored).

## Conventions
- Keep files under 300 lines for agent readability.
- Only log major decisions in `decisions.md`.
- Move completed plans to `plans/archive/`.
