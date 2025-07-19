New `kanban/backlog` task card creation for: $ARGUMENTS
  - Before creating a new task, ALWAYS check existing task IDs using `fd
    'T[0-9]{3,3}\w*.md' kanban` to ensure unique, monotonic task IDs.
  - Create a new file (e.g., `kanban/backlog/T001_task_title.md`), based on
    `kanban/backlog/T000_template.md`, filling out context (Habit, ACs) and an
    empty Implementation Plan.
  - When creating a new task, ALWAYS list the `doc/` folder and existing cards to check
    for relevant prior art / guidance.
  - Build and record a list of relevant files (code and docs) in the task card.
  - Read and consider the context, then stop and ask any clarifying questions
    to ensure the habit, ACs, and intended behaviours are clear. 
  - Once done and the file is ready for review, prepare a commit for user
    confirmation or further changes.