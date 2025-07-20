You'll adopt a TDD process when implementing $ARGUMENTS:
  
LOOP: red -> green -> refactor

1. make it work
   - identify the next incremental behaviour change
   - write tests which specify the desired change in behaviour
     IMPORTANT: Refer to the Test Standards in `/CLAUDE.md`
   - ensure the tests fail (red)
   - make the MINIMUM necessary changes to the code to satisfy the failing tests
     - this is important to ensure the tests are driving, and comprehensively specify, the implementation
   - ensure the tests pass (green)
   - record progress in the task card
   - commit 
2. make it better
   - run the linter for the files modified
   - consider the design of the code just written, in its overall context
   - identify and evaluate any refactorings likely to improve the quality of the codebase
     - this includes the test suite
   - if non-trivial, propose them to the User for feedback or acceptance
   - when performing refactoring:
     - work in small increments
     - consider whether to change the tests before the code - are you changing behaviour?
     - run the tests frequently - after each change
     - run the linter frequently to provide inputs to your decisions
     - record important decisions, link to highly relevant other code or documentation using ANCHOR comments
3. mark progress
   - update progress & record improvements made or identified for future in the Implementation Plan
   - commit, with a one line message 
   - decide on the next incremental change

Important: Refer to the Test Standards. Read them again.