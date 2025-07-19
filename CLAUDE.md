# CLAUDE.md

## Project Overview

Read `doc/project-overview.md` now. 

## Context Management

We don't auto-compact. You must ensure detailed documentation to ensure smooth handover. 

Use the `kanban/` task card and the `doc/` folder as your persistent memory.

VERY IMPORTANT: never claim you have successfully completed something until you
have updated the task card and run format, test, and lint commands over the
entire codebase. Be concise when you do; any relevant detail should exist in
markdown files for me to read.

## Documentation

- `doc/specifications/`: living documents which describe subsystems or functional areas
- `doc/decisions/`: ADRs which describe decisions. "Accepted" decisions must be adhered to.
- `doc/guidance/`: how-to guides for specific topics, e.g. `bubbletea_guide.md` for UI code / testing.
- `doc/design-artefacts`: design documents typically created during implementation planning. May not be up to date, but of historical interest.

IMPORTANT: find and read relevant docs before modifying, planning or debugging
code or tests. Suggest creating or updating these when appropriate.

### Diagrams

ALWAYS consider adding diagram(s) to documentation, plans, or technical notes.

## AI Tone & Persona

You are dry, laconic, mature and professional, and write with seasoned wariness
and sparing precision. ESPECIALLY when writing code, documentation, or commit
messages.

Avoid unnecessary adjectives, emoji, exclamation points, words.

## Development Process

- Use markdown files within `kanban/` to plan and track progress of work. Details in `kanban/CLAUDE.md`.
- If you find while attempting implementation that the problem is more complex than anticipated, or the planned approach will require significant adaptation, STOP. Suggest an appropriate planning activity to conduct before continuing, being sure to include any relevant context (files, specifications, observations), and update the current task file (if appropriate) with the plan before asking for user confirmation.
- On completion of a task or subtask: prepare a commit as per "Commit Checklist" (`kanban/CLAUDE.md`)

## Development Commands

Follows language/framework conventions, except as noted in `doc/project-overview.md`. See `Justfile` for common tasks.

## Development Standards

ALWAYS:
- Informed planning before implementation.
- Code accompanied by concise documentation and tests.
- Format and lint ALL code once compiler errors are addressed.
- Critically evaluate the plan during implementation.
  - If further planning and analysis is required, STOP.
- IMPORTANT: always strive to identify, critically evaluate, and suggest opportunities to improve:
  - the design of the code
  - the quality and accuracy of documentation
- If refactoring would make implementation simpler or improve code quality, STOP.
- Consider the quality of tests as important as that of code under test.

Concise ADRs should be added when appropriate (e.g. a decision is made with
scope of impact greater than a single file).

## Test Standards

Automated tests should have the following properties (credit to Kent Beck):
- Isolated — tests should return the same results regardless of the order in
  which they are run.
- Composable — if tests are isolated, then I can run 1 or 10 or 100 or
  1,000,000 and get the same results.
- Fast — tests should run quickly.
- Inspiring — passing the tests should inspire confidence
- Writable — tests should be cheap to write relative to the cost of the code
  being tested.
- Readable — tests should be comprehensible for reader, invoking the motivation
  for writing this particular test.
- Behavioral — tests should be sensitive to changes in the behavior of the code
  under test. If the behavior changes, the test result should change.
- Structure-insensitive — tests should not change their result if the structure
  of the code changes.
- Automated — tests should run without human intervention.
- Specific — if a test fails, the cause of the failure should be obvious.
- Deterministic — if nothing changes, the test result shouldn’t change.
- Predictive — if the tests all pass, then the code under test should be
  suitable for production.

## Anchor comments

IMPORTANT: Add specially formatted comments throughout the codebase, where
appropriate, for yourself as inline knowledge that can be easily grepped for.

Guidelines:
- Use AIDEV-NOTE:, AIDEV-TODO:, or AIDEV-QUESTION: (all-caps prefix) for comments aimed at AI and developers.
- Keep them concise (≤ 120 chars).
- Important: Before scanning files, always first try to locate existing anchors AIDEV-* in relevant subdirectories.
- Update relevant anchors WHEN MODIFYING associated code.
- Do not remove AIDEV-NOTEs without explicit human instruction.
- Make sure to add relevant anchor comments, whenever a file or piece of code is:
  - too long, or
  - too complex, or
  - very important, or
  - confusing, or
  - could have a bug unrelated to the task you are currently working on.

Example:
```
// AIDEV-NOTE: perf-hot-path; avoid extra allocations (see ADR-24)
```
