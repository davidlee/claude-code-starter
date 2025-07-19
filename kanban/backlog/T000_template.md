---
title: "Descriptive Task Title"
tags: ["parser"] # optional
related_tasks: ["depends-on:T123", "blocks:T456", "related-to:T789"] # Optional with relationship type
context_windows: ["./*.go", Claude.md, "doc/workflow.md", "doc/**/*.md"] # List of glob patterns useful to build the context window required for this task
---
# {{ title }}

**Context (Background)**:
*AI to complete*

**Type**: `feature` <!-- feature | fix | documentation | testing | refactor | chore -->

**Overall Status:** `Not Started` | `In Progress` | `Completed` | `Blocked`
*AI updates this based on sub-task progress or user instruction*

## Reference (Relevant Files / URLs)

### Significant Code (Files / Functions)
*AI to complete*

### Relevant Specifications
*AI to complete with reference to [docs](/doc/specifications/) - both existing & created during this task.*

### ADRs (Architecture Decision Records)
*AI to complete with reference to [docs](/doc/desisions/) - both existing & created during this task.*

### Related Tasks / History
*AI to complete*

## Habit / User Story

Brief description of what needs to be achieved, why, and for whom. Why is this task important?
*AI to complete, asking questions as appropriate*

## Acceptance Criteria (ACs)

A checklist of conditions that must be met for the task to be considered complete. User-focused.

- [ ] Criterion 1
- [ ] Criterion 2

*AI to complete, asking questions as appropriate*

## Architecture

*AI to complete when changes are architecturally significant, or when asked, prior to implementation plan.*

*A description of the proposed technical design, key decisions, alternatives considered, and consequences of trade-offs.*

*Strong preference for appropriate diagrams (e.g. C4; sequence; dependency graph) in github supported mermaid or ASCII format.*

## Implementation Plan & Progress

**Sub-tasks:**
*(Sub-task status: `[ ]` = todo, `[WIP]` = currently being worked on by AI , `[x]` = done, `[blocked]` = blocked)*

- [ ] **High-Level Phase/Component 1**: (Optional description)
  - [ ] **Detailed Sub-task 1.1:** (Description of sub-task)
    - *Design:* (Brief notes on approach, function signatures, data structures, API endpoints, UI elements, etc. AI proposes this.)
    - *Code/Artifacts to be created or modified:* (e.g., `user_service.go`, API documentation update)
    - *Testing Strategy:* (Unit tests, integration tests, manual checks to be performed by user. AI proposes this.)
    - *AI Notes:* (Internal thoughts, questions for this sub-task, recommended future changes not in scope)
    - [ ] **Detailed Sub-task 1.2:** ...
- [ ] **High-Level Phase/Component 2**
  - [ ] **Detailed Sub-task 2.1:** ...
    - *Design:* ...
    - *Testing Strategy:* ...

## Roadblocks

*(Timestamped list of any impediments. AI adds here when a sub-task is marked `[blocked]`)*
- `YYYY-MM-DD HH:MM - [Sub-task ID/Name]:` Description of roadblock.

## Notes / Discussion Log

*(Timestamped notes, decisions, clarifications from User or AI during the task's lifecycle)*
*(May include generated code blocks, references to files, or verbatim terminal output / chains of thought where relevant to understanding; verbosity is acceptable here, we're logging.)*

- `YYYY-MM-DD HH:MM - User:` ...
- `YYYY-MM-DD HH:MM - AI:` ...

## Git Commit History

**All commits related to this task (newest first):**

<!-- Example format:
- `abc1234` - feat(component)[T000/1.1]: implement feature X for subtask 1.1
- `def5678` - fix(component)[T000/1.2]: fix bug Y in subtask 1.2
- `ghi9012` - docs(tasks)[T000]: add task documentation

For tasks without commits yet, use:
*No commits yet - task is in backlog*
-->

*AI to update after commit or checking commit history*