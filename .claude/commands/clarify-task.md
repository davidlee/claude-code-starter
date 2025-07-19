You're about to begin work on [sub]task $ARGUMENTS (@kanban/in-progess).

Before you begin implementation, spend some effort proportionate to the expected complexity of the work to ensure you have the right context, and the work is set up for success.
First:
- Read and UNDERSTAND the task card, especially $ARGUMENTS.
- Consider other files in @doc/ which may be relevant to your understanding.
- Find, read and UNDERSTAND existing code files you will need to modify.
- Now, think hard about the questions which might arise during implementation. Consider whether:
  - its consistent with the current state of the code and docs
  - it's clear which files, functions, documents may need to be created or
    modified
  - any significant decisions are implicit rather than explicit
  - the work is correctly sequenced
  - any preliminary research or prototyping is included
  - relevant conventions, decisions or plans are referenced & incorporated
  - all functionality and behaviour to be implemented is well-specified
  - the test plan adequately covers the behavioural changes, accounting for edge cases and
    pathological conditions
  - it's clear which architectural & structural patterns to apply
  - it's obvious where to find docs, exemplars, other guidance required for the
    language features, libraries, APIs to be used.
  - any relevant documentation updates are included
  - any risks, assumptions or limitations are clearly listed
  - it's obvious how the user can verify successful completion, and any manual tests they should perform 
  - implementation will be predictable and lead to maintainable code, with high confidence

- Then 
  - add TODO: items listing any open questions or other concerns diretly to the implementation plan
  - add detail to improve and clarify the plan, where you can infer it from the context you have just built
  - ask the user your questions, describe your degree of confidence to proceed, and STOP for their feedback.
  - integrate their feedback.
  - continue asking any questions until the user directs to proceed and you have no further questions.

- Annotate the task card / code files as appropriate, e.g.
  - Relevant files
  - Anchor comments
  - Notes section
  - Implementation plan comments / additions

Then, recommend your next steps. Options include:
- Proceed with implementation
- Pivot first to refactor, to ensure the code is readily adaptable
- Define a prior task to revise the plan with further planning / analysis
- Ask further clarifying questions
- Challenge the value, clarity, sequencing or wisdom of the plan or the planned task