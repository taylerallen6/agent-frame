---
name: agentframe-discuss
description: >
  Facilitate the "Discuss/Theorize" phase of the workflow. Use when brainstorming, debating options, or exploring a new feature.
  Do not use if a plan for this topic already exists.
---

# AgentFrame Discuss

## Purpose
Facilitate the "Discuss/Theorize" phase of the workflow.

## Trigger
"Discuss feature X", "Brainstorm", "Theorize about Y".

## Workflow
1. **Create Notes:**
   - Create `.agent-data/discussion-notes/topic.md`.
2. **Discuss:**
   - Ask clarifying questions.
   - Explore options and trade-offs.
   - Steelman opposing views.
   - Update notes as the discussion progresses.
3. **Decide:**
   - If a major decision is made, call `agentframe-decide` to log it.
   - If the project context changes (e.g., new tech stack), call `agentframe-context`.
4. **Transition:**
   - If consensus is reached, suggest moving to `agentframe-plan`.

## Output
- Updated `.agent-data/discussion-notes/topic.md`.
- Potential triggers for `agentframe-decide`, `agentframe-context`, or `agentframe-plan`.
