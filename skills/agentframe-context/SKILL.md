---
name: agentframe-context
description: >
  Maintain `.agent-data/context.md`. Use when project goals, tech stack, or conventions change.
  Do not use for temporary notes or minor updates.
---

# AgentFrame Context

## Purpose
Maintain `.agent-data/context.md`. Acts as the gatekeeper for project identity.

## Trigger
Called by other skills (e.g., `agentframe-discuss`) after major decisions.

## Workflow
1. **Read:** Load `.agent-data/context.md`.
2. **Update:** Integrate new info (goals, tech stack, conventions).
3. **Refine:** Ensure the file stays concise and accurate.
4. **Write:** Save to `.agent-data/context.md`.

## Rules
- Only this skill writes to `context.md`.
- Keep it under 300 lines.
- Focus on durable knowledge (goals, stack, conventions).

## Output
- Updated `.agent-data/context.md`.
