# Project Structure

AgentFrame defines a standardized layout for AI-assisted development. It separates human-facing documentation from agent working memory, ensuring clarity for both audiences.

## Directory Tree

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
    discussion-notes/    # Temporary brainstorming per topic (ignored)
    plans/               # Active plans
      archive/           # Completed plans
    scratch/             # Temp working notes (ignored)
    scripts/             # Project automation
```

## Audience Split

| Location | Primary Audience | Purpose | State |
|---|---|---|---|
| `docs/` | Humans first | Published, stable knowledge | Durable, reviewed |
| `.agent-data/` | Agents first | Working memory, plans, decisions | Evolving, temporary |
| `AGENTS.md` | Any AI agent | Tool instructions, conventions | Stable |
| `README.md` | Humans | Quick start, project overview | Stable |

## How Pieces Relate

```
[AGENTS.md] --> (Loads agent behavior & structure rules)
      |
      v
[.agent-data/] --> (Agent working memory: context, plans, decisions)
      |
      v
[docs/] --> (Published documentation: stable, human-readable)
```

1. **`AGENTS.md`** is the entry point. Any AI agent opening the project reads this first to understand build commands, conventions, and where to find project context.
2. **`.agent-data/`** holds the agent's working memory. It contains the current plan, recent decisions, and project context. Agents read this to understand where the project stands.
3. **`docs/`** contains published, stable documentation. Humans read this for architecture, setup, and API references. Agents update it only when knowledge is finalized.

## Git Tracking

- **Tracked:** `AGENTS.md`, `README.md`, `docs/`, `.agent-data/context.md`, `.agent-data/decisions.md`, `.agent-data/plans/`, `.agent-data/scripts/`
- **Ignored:** `.agent-data/scratch/`, editor junk (`*.swp`, `*.bak`, `.DS_Store`)

This split ensures that shared, durable knowledge is versioned, while temporary working notes and scratchpad files are excluded from the repository.
