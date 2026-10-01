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
3. **Update the Plan Immediately:** After completing each step (or small group of related steps), immediately write the updated plan file with the checkbox marked `[x]`. Do not batch updates until the end — this ensures progress is saved if context refreshes and keeps the agent focused on the current section.
4. **Update the User:** After each step, briefly tell the user what just completed and what you're about to do next. Keep it factual and concise.
5. **Section Check-ins:** Between each section of the plan, stop and give the user a chance to interject, correct course, or continue. Say something like "Section X complete. Ready for Section Y — anything to adjust?" Do not plow through multiple sections without checking in.
6. **Update Docs:** Update `docs/` with relevant details (e.g., API endpoints, architecture changes) as features are implemented. Update `README.md` only if explicitly requested.
7. **Archive:** When all steps are done, move the plan to `plans/archive/`.

## Output
- Completed work.
- Updated plan file (checked boxes).
- Updated documentation.
- Archived plan file.
