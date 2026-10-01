# AGENTS.md

`AGENTS.md` is the entry point for any AI agent that opens the project. It tells the agent how to work with the codebase, where to find context, and what conventions to follow.

## What It Contains

A typical `AGENTS.md` for this system includes:

1. **Project Overview:** Brief description of what the project is.
2. **Build & Test Commands:** How to run the project, tests, linters.
3. **Conventions:** Coding style, naming rules, file structure.
4. **Structure Reference:** Where to find `.agent-data/`, `docs/`, etc.
5. **Git Workflow:** Branching strategy, commit conventions.

## Example

```markdown
# Agent Instructions

## Project Overview
This is a project that does X.

## Build & Test
- Run `npm install` to set up dependencies.
- Run `npm test` to run tests.
- Run `npm run lint` to check code style.

## Conventions
- Use ESLint for code style.
- Keep files under 300 lines.
- Use `.agent-data/` for agent working memory.

## Structure
- `docs/` — Published documentation (human-first).
- `.agent-data/` — Agent working memory (agent-first).
- `src/` — Source code.

## Git Workflow
- Use feature branches.
- Commit messages: `type(scope): description`.
```

## Tool Compatibility

`AGENTS.md` is read natively by 20+ AI coding tools:

- OpenAI Codex
- Cursor
- Claude Code
- Windsurf
- Devin
- Gemini CLI
- Aider
- VS Code AI
- And many more

It is stewarded by the [Agentic AI Foundation](https://agents.md/) under the Linux Foundation.

## Size Limits

- **Keep it under 300 lines.** Agents stop paying attention after that.
- **Be specific.** Vague instructions dilute the signal.
- **Update it.** Treat it as living documentation.

## How It Loads the Structure

When an agent opens the project:

1. It reads `AGENTS.md` first.
2. It learns about the project structure (`.agent-data/`, `docs/`, etc.).
3. It reads `.agent-data/context.md` for project overview.
4. It reads `.agent-data/plans/` for current work.
5. It reads `docs/` for published knowledge.

This ensures the agent has both the structural rules and the working memory before it starts any task.

## Best Practices

1. **Keep it concise.** Only include what agents need to know.
2. **Reference other files.** Point agents to `.agent-data/` and `docs/` instead of duplicating content.
3. **Update it when the project changes.** If build commands or conventions change, update `AGENTS.md`.
4. **Use it as the loader.** It should tell agents where to find everything else.
