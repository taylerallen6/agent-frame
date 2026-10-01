# AgentFrame

A structured approach to project creation and maintenance using AI agents.

## Installation

Run the appropriate script for your agent to install skills globally:

```bash
# For Hermes Agent
chmod +x scripts/install-hermes.sh
./scripts/install-hermes.sh

# For Claude Code
chmod +x scripts/install-claude.sh
./scripts/install-claude.sh
```

## Structure

```
project-root/
  AGENTS.md              # Agent instructions (build, test, style)
  README.md              # Human quick-start
  .gitignore             # Ignore rules

  docs/                  # Published documentation — human-first
    architecture.md
    setup.md
    api.md
    ...

  .agent-data/           # Agent working memory — agent-first
    context.md           # Project overview, current focus
    decisions.md         # ADRs, recorded choices
    plans/               # Phase plans, roadmaps
    scratch/             # Temp working notes (ignored)
    scripts/             # Project automation
```

## Tracking

- **Tracked:** `AGENTS.md`, `README.md`, `docs/`, `.agent-data/context.md`, `.agent-data/decisions.md`, `.agent-data/plans/`, `.agent-data/scripts/`
- **Ignored:** `.agent-data/scratch/`, editor junk

## Workflow

The recommended process for building features is a three-step cycle:

1. **Discuss:** Use `agentframe-discuss` to brainstorm ideas, debate options, and capture notes in `.agent-data/discussion-notes/`.
2. **Plan:** Use `agentframe-plan` to turn discussion notes into actionable, step-by-step plans in `.agent-data/plans/`.
3. **Implement:** Use `agentframe-implement` to execute the plan step-by-step, update documentation, and archive the plan when complete.

This keeps the project organized and ensures every feature is thought through before coding begins.

## Skills

- `agentframe-init` — Initialize the structure
- `agentframe-discuss` — Facilitate discussion and debate
- `agentframe-plan` — Create and manage plans
- `agentframe-implement` — Execute plans step-by-step
- `agentframe-decide` — Record decisions
- `agentframe-context` — Maintain project overview
