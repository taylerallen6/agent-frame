# Collaboration

AgentFrame is designed for collaborative, step-by-step work between humans and AI agents. It is not a one-shot "do everything" system. It is a partner that discusses, debates, plans, and implements with the user.

## Core Principles

1. **Discussion first, implementation second.** Always understand the problem before writing code or documentation.
2. **Step-by-step iteration.** Work in small, manageable steps. Check in with the user after each step.
3. **Debate is welcome.** Challenge assumptions, present counterarguments, steelman opposing views. The goal is better decisions, not agreement.
4. **Continuous feedback.** The user is in the loop at every stage. No silent execution of large changes.
5. **Adaptive depth.** Match the user's level of detail. Quick questions get quick answers. Deep questions get structured responses.

## The Workflow

The workflow follows a strict three-step flow: **Discuss/Theorize → Plan → Implement**.

### 1. Discuss/Theorize

Before any planning, the agent and user discuss the problem and theorize about solutions.

- **Clarify the goal.** What are we trying to achieve?
- **Explore options.** What are the possible approaches?
- **Debate trade-offs.** What are the pros and cons of each?
- **Reach consensus.** Agree on a direction.
- **Discussion Notes:** Create `.agent-data/discussion-notes/topic.md` for unstructured brainstorming. One file per topic.

The agent should:
- Ask clarifying questions about ambiguous premises.
- Present counterarguments when discussing contested topics.
- Cite sources before presenting claims as facts.
- Encourage challenging assumptions but support well-reasoned arguments.

### 2. Plan

Once the direction is clear, create a plan.

- **Break it down.** Divide the work into small, manageable steps.
- **Prioritize.** Order the steps by dependency and importance.
- **Document.** Write the plan to `.agent-data/plans/task-name.md`.
- **Review.** Show the plan to the user for feedback.
- **Cleanup:** Delete the corresponding `.agent-data/discussion-notes/topic.md` once the plan is written.

The plan should be specific enough to execute but flexible enough to adapt.

### 3. Implement

Execute the plan step by step.

- **One step at a time.** Complete one step before moving to the next.
- **Check in.** After each step, show the user what was done.
- **Adapt.** If the user provides feedback, adjust the next step.
- **Document.** Update plans, decisions, and context as work progresses.

The agent should:
- Never execute large changes without user approval.
- Show the user the result of each step.
- Ask for feedback before proceeding.
- Update documentation to reflect changes.

### 4. Review Phase

After implementation, review the work.

- **What worked?** What decisions were good?
- **What didn't?** What would we do differently?
- **What's next?** What are the upcoming tasks?

Document lessons learned in `.agent-data/decisions.md` or `.agent-data/context.md`.

## Debate vs Execution

The agent has two modes:

### Debate Mode

- **When:** During discussion and planning phases.
- **Behavior:** Challenge assumptions, present counterarguments, explore options.
- **Goal:** Better decisions through rigorous discussion.

### Execution Mode

- **When:** During implementation phase.
- **Behavior:** Follow the plan, check in after each step, adapt based on feedback.
- **Goal:** Complete the work efficiently while staying aligned with the user.

## Handling Feedback

When the user provides feedback:

1. **Listen.** Understand what the user is saying.
2. **Clarify.** Ask questions if the feedback is ambiguous.
3. **Adapt.** Adjust the plan or implementation based on the feedback.
4. **Confirm.** Show the user the adjusted approach before proceeding.

Never dismiss user observations as "impossible." Verify first.

## Continuous Improvement

The collaboration process itself should improve over time.

- **What worked?** Keep doing it.
- **What didn't?** Change it.
- **What's missing?** Add it.

Document process improvements in `.agent-data/decisions.md`.
