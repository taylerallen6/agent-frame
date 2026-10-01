---
name: agentframe-context
description: >
  Maintain `.agentframe/context.md`. Use when project goals, tech stack, or conventions change.
  Do not use for temporary notes or minor updates.
---

# AgentFrame Context

## Purpose
Maintain `.agentframe/context.md`. Acts as the gatekeeper for project identity.

## Trigger
Called by other skills (e.g., `agentframe-discuss`) after major decisions.

## Workflow
1. **Investigate:** Scan existing project files to understand what the project is. Look at `README.md`, `package.json`, `requirements.txt`, `Cargo.toml`, source directory structure, config files, and any existing documentation.
2. **Form Hypothesis:** Based on the files, determine the project's purpose, goals, tech stack, and conventions.
3. **Confirm with User:** Present findings to the user: *"I see this is a [description]. Tech stack is [stack]. Is that right?"* Let the user confirm or correct.
4. **Read:** Load `.agentframe/context.md` if it exists.
5. **Update:** Integrate confirmed info (goals, tech stack, conventions).
6. **Refine:** Ensure the file stays concise and accurate.
7. **Write:** Save to `.agentframe/context.md`.

## Rules
- Only this skill writes to `context.md`.
- Keep it under 300 lines.
- Focus on durable knowledge (goals, stack, conventions).

## Output
- Updated `.agentframe/context.md`.
