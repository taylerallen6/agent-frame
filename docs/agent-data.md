# Agent Data

The `.agent-data/` directory is the agent's working memory. It contains the current state of the project: what it is, what we're doing, and why we made certain choices.

## Structure

```
.agent-data/
  context.md       # Project overview, current focus, conventions
  decisions.md     # ADRs, recorded choices with reasoning
  discussion-notes/ # Temporary brainstorming per topic (ignored by git)
  plans/           # Active feature/change plans
    archive/       # Completed plans
  scratch/         # Temp working notes (ignored by git)
  scripts/         # Project automation
```

## Files

### `context.md`

The "what is this?" file. Agents read it first to understand the project.

- **Content:** Project goals, tech stack, coding conventions, current focus.
- **Audience:** Agents first, humans second.
- **Lifecycle:** Updated as the project evolves. Keep it concise.

### `decisions.md`

The "why did we do it this way?" file. A chronological log of architecture decisions and trade-offs.

- **Content:** Each entry has a date, decision, reasoning, and rejected alternatives.
- **Audience:** Agents and humans.
- **Lifecycle:** Appends over time. Never delete entries; they provide historical context.

**Example entry:**

```markdown
## 2026-09-09: Project Structure
- **Decision:** Use `.agent-data/` for agent working memory, `docs/` for published documentation
- **Reasoning:** Clear separation between agent-first and human-first content.
- **Rejected:** `.project/`, `.ai/`, `.agents/` — `.agent-data/` is most explicit.
```

## Folders

### `discussion-notes/`

Temporary brainstorming and discussion notes per topic.

- **Content:** Unstructured bullet points, pros/cons, questions, quick thoughts.
- **Audience:** Agents and humans during the Discuss phase.
- **Lifecycle:** Created during Discuss. Deleted by the Plan skill once the plan is written. Ignored by git.

### `plans/`

Active feature/change plans.

- **Naming:** Clear, descriptive names. Examples: `01-initial-setup.md`, `feature-user-auth.md`, `phase-2-api.md`.
- **Content:** Scope, steps, current status, notes.
- **Lifecycle:** Created when planning starts. Updated as work progresses. Moved to `archive/` when complete.

### `plans/archive/`

Completed plans.

- **Lifecycle:** Plans are moved here when all steps are checked.
- **Reviving:** If a plan needs further work, create a *new* plan in `plans/` that references the archived one. Do not edit the archived plan.

### `scratch/`

Temporary brainstorming, session notes, half-formed ideas.

- **Content:** Whatever is needed for the current discussion.
- **Audience:** Agents and humans during active work.
- **Lifecycle:** Ignored by git. Wiped or archived when done. No pressure to be clean.

### `scripts/`

Project automation.

- **Content:** Shell scripts, Python scripts, whatever helps the project.
- **Audience:** Agents and humans.
- **Lifecycle:** Tracked by git. Updated as needed.

## Naming Conventions

- **Plans:** Use prefixes for ordering (`01-`, `02-`) or feature names (`feature-`, `phase-`, `bugfix-`).
- **Decisions:** Use dates (`YYYY-MM-DD`) as headings.
- **Context:** Keep it concise. Under 300 lines for agent readability.

## Lifecycle

1. **Create:** `context.md` and `decisions.md` are created when the project starts. `plans/` files are created as needed.
2. **Update:** Agents and humans update these files as work progresses. `context.md` evolves, `decisions.md` appends, `plans/` files update status.
3. **Archive:** Completed plans can be renamed with a `done-` prefix or moved to an `archive/` folder if desired. `scratch/` is wiped when done.

## Git Tracking

- **Tracked:** `context.md`, `decisions.md`, `plans/`, `scripts/`
- **Ignored:** `scratch/`
