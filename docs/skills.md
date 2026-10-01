# Skills

Skills are reusable workflows that guide the agent through specific tasks. They facilitate the collaborative workflow by providing structured processes for planning, decision-making, and documentation.

## Core Skills

### `agentframe-init`

- **Purpose:** Initialize a new project with the AgentFrame structure.
- **Trigger:** "Start a new project" or "Initialize agent data."
- **Workflow:**
  1. Create the directory structure (`docs/`, `.agent-data/`, etc.).
  2. Write initial `context.md` with project goals and tech stack.
  3. Create `AGENTS.md` with basic instructions.
  4. Set up `.gitignore` with tracking rules.
  5. Confirm with the user that the structure is correct.

### `agentframe-plan`

- **Purpose:** Create and manage plans inside `.agent-data/plans/`.
- **Trigger:** "Plan feature X" or "Create a phase plan."
- **Workflow:**
  1. Discuss the scope with the user.
  2. Break the work into small, manageable steps.
  3. Prioritize steps by dependency and importance.
  4. Write the plan to `.agent-data/plans/feature-x.md`.
  5. Show the plan to the user for feedback.
  6. Update the plan based on feedback.

### `agentframe-decide`

- **Purpose:** Record decisions in `.agent-data/decisions.md`.
- **Trigger:** "Record our decision to use Redis" or "Log an ADR."
- **Workflow:**
  1. Capture the decision, reasoning, and rejected alternatives.
  2. Format the entry with a date and clear structure.
  3. Append to `.agent-data/decisions.md`.
  4. Confirm with the user that the decision is recorded correctly.

### `agentframe-context`

- **Purpose:** Maintain `.agent-data/context.md`.
- **Trigger:** "Update project goals" or "Add tech stack info."
- **Workflow:**
  1. Prompt the user for changes to project goals, tech stack, or conventions.
  2. Update `.agent-data/context.md` with the new information.
  3. Keep the file concise (under 300 lines for agent readability).
  4. Confirm with the user that the context is accurate.

### `agentframe-implement`

- **Purpose:** Execute the "Implement" phase of the workflow.
- **Trigger:** "Implement plan", "Start implementation", "Execute task".
- **Workflow:**
  1. Read the plan from `.agent-data/plans/task-name.md`.
  2. Execute steps one by one.
  3. Update the plan file (check off boxes).
  4. Update `docs/` with relevant details.
  5. Check in with the user after each step.
  6. Move plan to `plans/archive/` when done.

## How Skills Facilitate Collaboration

Skills provide structured workflows for the collaborative process:

1. **Discussion:** Skills like `agentframe-discuss` guide the discussion phase by ensuring all options are explored before a decision is made.
2. **Planning:** `agentframe-plan` breaks work into small, manageable steps and documents them for future reference.
3. **Implementation:** `agentframe-implement` executes the plan step-by-step, updates the plan file, and updates `docs/`.
4. **Review:** `agentframe-decide` and `agentframe-context` help document lessons learned and update project context based on experience.

## When to Create New Skills

Create a new skill when:

1. **A workflow repeats.** If you find yourself doing the same steps multiple times, encode them in a skill.
2. **A process is complex.** If a workflow has many steps or requires specific knowledge, a skill ensures consistency.
3. **A new collaboration pattern emerges.** If you develop a new way of working together, document it as a skill.

## Skill Structure

Each skill should have:

- **Name:** Clear, descriptive name (e.g., `agentframe-plan`).
- **Purpose:** What the skill does.
- **Trigger:** When to use the skill.
- **Workflow:** Step-by-step instructions for executing the skill.
- **Output:** What the skill produces (e.g., a plan file, a decision entry).
