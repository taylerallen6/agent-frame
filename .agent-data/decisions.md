# Decisions Log

## 2026-09-09: Project Structure
- **Decision:** Use `.agent-data/` for agent working memory, `docs/` for published documentation
- **Reasoning:** Clear separation between agent-first and human-first content. Explicit naming avoids confusion.
- **Rejected:** `.project/`, `.ai/`, `.agents/` — `.agent-data/` is most explicit.

## 2026-09-09: Minimal Agent Data Structure
- **Decision:** 3 files (`context.md`, `decisions.md`), 3 folders (`plans/`, `scratch/`, `scripts/`)
- **Reasoning:** Simple enough to not be a burden, structured enough to be useful. Plans accumulate naturally in a folder.
- **Rejected:** Single `plan.md` file — plans accumulate over time and need their own space.
