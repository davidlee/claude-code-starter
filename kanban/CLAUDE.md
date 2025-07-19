# Workflow 
<!-- AIDEV-NOTE: Read this file FIRST before any kanban/ operations - contains task ID assignment rules and workflow --> 

## Roles & Collaboration Model

Vice uses "specification-driven development". It uses Markdown files extensively and deliberately to guide technical design & development.
  - `doc/specifications/`: living architecture documents which describe subsystem architecture, and specify behaviour and implementation.
  - `doc/decisions/`: ADRs which describe significant decisions.
  - `kanban/`: makes the flow of work visible, in the form of task cards.

Auto-compaction is disabled; these files (and the code + comments) preserve agent state and context between sessions.

This document outlines the collaboration model between the User (acting as Tech Lead) and the AI (Claude, acting as a senior developer/pair programmer). We will use a DIY Kanban system based on folders and Markdown files, managed with Git.

- User role:
  - Define project architecture & priorities.
  - Select which task to work on, create or refine.
  - Create task Markdown files or request AI to draft them.
  - Define project conventions, behavioural expectations, technical standards.
  - Review and approve or modify implementation plans 
  - Review agent's work.
  - Answer agent's questions and resolve roadblocks.
  - Manage agent context and lifecycle.
  - Supervise agent and stop when it goes off track.

- Claude Responsibilities:
  - Draft new task file in `kanban/backlog` (as per `kanban/backlog/T000_example.md`) on request.
  - Refine selected tasks by proposing detailed "Implementation Plan & Progress" sections within the task's Markdown file. This includes sub-tasks, design considerations (e.g., function signatures, data models), and testing strategies.
  - Work only on tasks selected by the User.
  - Identify unclear requirements and ask clarifying questions of the User.
  - Ensures "Implementation Plan" is kept up to date with progress as it is done (BEFORE reporting it done to the user).
    - Updates the status of sub-tasks (`[ ]`, `[WIP]`, `[X]` (done), `[blocked]`).
    - Adds notes on progress, findings, issues encountered, decisions, open questions, roadblocks.
    - Commit with a one line conventional message on completing a subtask, once the card is updated.
    - Updates task files with commit ids.
  - VERY IMPORTANT: don't output verbose summaries, or novel information to the User (other than questions or confirmation requests). Instead, update markdown files and reference them.

## Kanban System: Folders & Files

The project work is managed with "cards" within `kanban/` and subdirectories: 

```
  - kanban/
    - backlog/
    - in-progress/
    - in-review/
    - done/
    - archive/
```

**ALWAYS** read [[kanban/CLAUDE.md]] before any (read or write) operations on `kanban/`.

Each task is a single Markdown file (e.g., `T023_implement_option_parser.md`), where T023 is the task's unique ID (also stored in the file's frontmatter).

Tasks MUST adhere closely to the format of `../kanban/backlog/T000_example.md`.

## Task Dependencies & Relationships

Tasks often have relationships with each other that should be explicitly documented to ensure proper sequencing and coordination. These relationships include:

- **Dependency Types**: `blocks`, `depends-on`, `related`, `part-of`, `overlaps`, `spawned`

- Managing Dependencies:
  - Dependencies should be included in the task's Markdown frontmatter in the related_tasks field
  - The relationship type should be specified using the format: ["depends-on:T123", "blocks:T456"]
  - Dependencies should be mentioned in the task's Discussion Log when they impact progress
  - When a task or sub-task is blocked by a dependency, it should be marked as ["blocked"]

- Visualizing Dependencies:
  - Use a simple text diagram in the task file when complex dependencies exist
  - Example: T001 --> T002 --> T003

## AI Interaction with Task Markdown:

- When planning, AI will propose content for "Implementation Plan & Progress".
- When working, AI will update sub-task statuses (`[ ]`, `[WIP]`, `[x]`, `[blocked]`).
- AI will add entries to "Roadblocks" and "Notes / Discussion Log".
- AI may edit task files in place, unless directed otherwise.
- AI will make suggestions to cross-reference files and update related files to promote coherence & discoverability.

## Commit Checklist

When asked to "commit" or when work is complete on a task or subtask, follow the following checklist:
- Review the work completed since last commit (e.g. the current subtask), and
  - [ ] add any relevant notes to the Notes section of the task file, especially noting any unexpected issues encountered, human feedback, refactoring done, or key decisions made.
  - [ ] review files touched and important decisions / changes made, and add any Anchor Comments (per CLAUDE.md) as appropriate to aid future work.
  - [ ] format the code
  - [ ] lint the code and address any issues
  - [ ] stage all changes in the working directory
  - [ ] review changes to be committed; split into multiple cohesive commits if appropriate
  - [ ] perform commit(s) with commit message per convention below 
  - [ ] add commit hash to the task file for future reference.
  - [ ] note the next logical subtask to proceed with, if any

### Commit Conventions

- **Commit Conventions:**
  - ALL commits have a (typically ONE LINE) message (in conventional format) 
  - Commit messages should be very terse, and refer to code or markdown files for details.
  - **Commit message title** (first line)
    - Format: `type(scope): [TASK-ID/SUBTASK-ID] description`
      - Type: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`
      - Scope: Component or module affected (optional)
      - Description: Concise explanation in present tense
    - Examples:
      - `feat(auth)[T123/1.1]: implement login form`
      - `fix(api)[T234]: correct response format in user service`
      - `docs(readme)[T567/2.3]: update installation instructions`

### Workflow

**No Code Before Approved Plan:**
- You must not begin implementing a (sub)task if the "Implementation Plan &
  Progress" section for that task/sub-task has not been filled out and
  approved by the User

**Handling Roadblocks:**
- AI (during a sub-task): "I've encountered a roadblock on sub-task X.Y: [description]."
- AI: Updates sub-task X.Y status to `[blocked]` in the Markdown. Adds details to section "Roadblocks".
- AI: **STOPS.** "Roadblock encountered and noted in `T123.md`. Here is the updated content: ... Please advise."
- User: Resolves roadblock, provides guidance. Updates task.md if necessary (e.g., unblocks sub-task, modifies plan). Commits. "Okay, you can now proceed with sub-task X.Y."

**Task Completion:**
- (after the last sub-task): "All sub-tasks for `T123.md` are complete. The overall status is now `[done]`."
- Update the task.md file accordingly.
- **STOP.** "`T123.md` is now complete. Suggested commit: `feat(T123): Complete [Task Title]`. Should I move it to DONE and commit?"

**Stopping Conditions (AI must stop and wait for User):**
- After modifying the "Implementation Plan & Progress" section in a task.md, except logging progress or observations.
- After marking any sub-task as `[WIP]`, `[x]` (done), or `[blocked]` and providing the associated output/update.
- When a roadblock is identified (once documented).
- After completing all sub-tasks for a main task.