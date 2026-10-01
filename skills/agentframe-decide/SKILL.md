---
name: agentframe-decide
description: >
  Record major decisions in `.agent-data/decisions.md`. Use when a significant architectural or project choice is made.
  Do not use for minor decisions or routine updates.
---

# AgentFrame Decide

## Purpose
Record major decisions in `.agent-data/decisions.md`.

## Trigger
"Record decision", "Log choice", "Add ADR".
Called by other skills (e.g., `agentframe-discuss`) when a major decision is made.

## Workflow
1. **Input:**
   - Gather the decision, reasoning, and rejected alternatives.
2. **Format:**
   - Create an entry in this format:
     ```markdown
     ## YYYY-MM-DD: Topic
     - **Decision:** What was chosen.
     - **Reasoning:** Why it was chosen.
     - **Rejected:** Alternatives considered.
     ```
3. **Append:**
   - Add the entry to `.agent-data/decisions.md`.
4. **Confirm:**
   - Show the entry to the user for verification.

## Output
- Updated `.agent-data/decisions.md`.
