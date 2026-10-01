# Rename `.agent-data/` to `.agentframe/`

**Date:** 2026-10-01
**Status:** In Progress — verifying each step
**Commit:** `15c3be3`

## Goal

Rename `.agent-data/` to `.agentframe/` across the entire repo for naming consistency with `agentframe-*` skill names. Update every reference to avoid dead links.

## Steps

### 1. Directory Rename
- [x] Rename `.agent-data/` → `.agentframe/` (git tracks as rename with subfiles)
- [x] Verify: `.agentframe/context.md`, `decisions.md`, `plans/`, `plans/archive/` all present

### 2. Root Files
- [x] `AGENTS.md` — update structure section, git workflow section, tracked/ignored paths
- [x] `README.md` — update directory tree, tracked/ignored paths, workflow steps
- [x] `.gitignore` — update scratch and discussion-notes ignore rules

### 3. Docs (6 files)
- [x] `docs/structure.md` — directory tree, audience table, visual diagram, tracked/ignored paths
- [x] `docs/agent-data.md` — rename intro, structure block, decisions log entry
- [x] `docs/agents-md.md` — structure reference, onboarding steps, best practices
- [x] `docs/collaboration.md` — discussion notes path, plan path, cleanup path, lessons learned path, process improvements path
- [x] `docs/gitignore.md` — tracked files list, ignored files list, gitignore example block, meeting notes path, research path
- [x] `docs/skills.md` — init structure, plan purpose/path, decide purpose/path, context purpose/path, implement plan path

### 4. Skills (6 SKILL.md + 2 templates)
- [x] `skills/agentframe-init/SKILL.md` — existing folder check, structure creation steps
- [x] `skills/agentframe-init/templates/.gitignore` — scratch and discussion-notes ignore rules
- [x] `skills/agentframe-init/templates/AGENTS.md` — discuss/plan workflow steps
- [x] `skills/agentframe-context/SKILL.md` — description, read/write paths, confirmation message
- [x] `skills/agentframe-decide/SKILL.md` — description, append path, confirmation message
- [x] `skills/agentframe-discuss/SKILL.md` — create path, confirmation message
- [x] `skills/agentframe-implement/SKILL.md` — read plan path
- [x] `skills/agentframe-plan/SKILL.md` — discussion notes lookup, plan write path, cleanup delete path, archive path, confirmation message

### 5. Working Memory (2 files)
- [x] `.agentframe/decisions.md` — update decision entry and rejected alternatives
- [x] `.agentframe/plans/doc-build-plan.md` — update doc reference and deep dive description

### 6. Verification
- [x] Search entire repo for remaining `agent-data` matches → **0 results**
- [x] Git status shows 22 files changed (1 rename + 21 reference updates)
- [x] Committed as `15c3be3`

## Notes

- One-time exception: plan written retroactively as verification checklist, not implementation guide. Future plans should be written for forward execution.
