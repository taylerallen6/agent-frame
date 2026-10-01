---
name: agentframe-plan
description: >
  Facilitate the "Plan" phase of the workflow. Use to turn discussion notes into actionable, step-by-step plans.
  Do not use if discussion notes for this topic are missing; use `agentframe-discuss` first.
---

# AgentFrame Plan

## Purpose
Facilitate the "Plan" phase of the workflow.

## Trigger
"Plan feature X", "Create plan for Y", "Start planning".

## Workflow
1. **Check Notes:**
   - Look for `.agent-data/discussion-notes/topic.md`.
   - **If Missing:**
     - Strongly suggest using `agentframe-discuss` first.
     - Ask if notes might be under a different name.
     - Discourage skipping discussion, but allow it if the user insists.
   - **If Present:**
     - Read notes.
2. **Create Plan:**
   - Write `.agent-data/plans/task-name.md`.
   - Include scope, steps (checkboxes), and status.
3. **Cleanup:**
   - Delete the corresponding `.agent-data/discussion-notes/topic.md`.
4. **Review:**
   - Show the plan to the user for approval.
5. **Archive:**
   - If a plan is completed (all steps checked), move it to `.agent-data/plans/archive/`.

## Output
- New or updated `.agent-data/plans/task-name.md`.
- Deleted discussion notes.
- Archived completed plans.
