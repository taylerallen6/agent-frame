---
name: agentframe-implement
description: >
  Execute the "Implement" phase of the workflow. Guides step-by-step execution of a plan.
  Do not use if a plan for this task does not exist; use `agentframe-plan` first.
---

# AgentFrame Implement

## Purpose
Execute the "Implement" phase of the workflow. Guides step-by-step execution of a plan.

## Trigger
"Implement plan", "Start implementation", "Execute task".

## Workflow
1. **Read the Plan:** Load the relevant `.agentframe/plans/task-name.md`.
2. **Step-by-Step Execution:** Work through the checkboxes one by one.
3. **Update the Plan:** Check off boxes (`- [x]`) as they are completed.
4. **Update Docs:** Update `docs/` with relevant details (e.g., API endpoints, architecture changes) as features are implemented. Update `README.md` only if explicitly requested.
5. **Check-in:** Ask the user for feedback after each step.
6. **Archive:** When all steps are done, move the plan to `plans/archive/`.

## Output
- Completed work.
- Updated plan file (checked boxes).
- Updated documentation.
- Archived plan file.
