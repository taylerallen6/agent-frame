---
name: agentframe-init
description: >
  Initialize the AgentFrame structure in a project. Use when the user wants to scaffold a new project or add AgentFrame to an existing one.
  Do not use if `.agent-data/` already exists in the current directory.
---

# AgentFrame Init

## Purpose
Initialize the AgentFrame structure in a project.

## Trigger
"Initialize AgentFrame", "Add agent structure", "Scaffold project".

## Workflow
1. **Check Location:**
   - If in an existing folder, use it.
   - If the user wants a new project, ask for the folder name and create it.
2. **Check Existing Files:**
   - Look for existing `.agent-data/`, `docs/`, or `AGENTS.md`.
   - If they exist, ask the user if they want to overwrite, merge, or skip.
3. **Create Structure:**
   - `.agent-data/`
   - `.agent-data/plans/`
   - `.agent-data/plans/archive/`
   - `.agent-data/discussion-notes/`
   - `.agent-data/scratch/`
   - `.agent-data/scripts/`
   - `docs/`
4. **Write Files:**
   - `.agent-data/context.md` (Minimal header)
   - `.agent-data/decisions.md` (Minimal header)
   - `.gitignore` (With ignore rules for `.agent-data/scratch/` and `.agent-data/discussion-notes/`)
   - `AGENTS.md` (With standard system rules)

## Output
- The scaffolded structure ready for use. No project details filled in yet.
