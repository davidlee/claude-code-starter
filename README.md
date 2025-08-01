# claude-code-starter

An opinionated Claude Code starter kit. Extracted from [vice](https://github.com/davidlee/vice).

Coming soon, maybe: meta-commentary / usage instructions. 

## Sync

if you made some improvements in a project using this starter kit, you can run 

```bash
.script/import-claude-files.sh your-project-name
```

to pull them into your fork of this repo, or from your project run

```bash
.script/import-claude-files.sh path-to-your-fork-of-starter
```

to incorporate them into another project. 

This stuff changes fast, so you may as well benefit from your learning on one project in your others.

## Project-Specific Stuff

Put what you want Claude to read on every boot in `doc/project-overview.md`.

## Justfile

Your preferred language may have its own, but
[just](https://just.systems/) is a nice runner for any language.

It's got a few useful amenities to get you started. Go ahead and customise or replace it.

## Credits

Initial kanban .md file stolen and adapted from [someone on Reddit](https://www.reddit.com/r/ClaudeCode/comments/1kj9f7m/sharing_my_kanban_workflow_to_give_clear/).

## Alternatives

[Backlog.md](https://github.com/MrLesk/Backlog.md)

## Cool Tangents: Stuff I Would Have Been Inspired By If I Read It First

Kiro's release was a big hit of confirmation bias, and there's a lot of
activity around this approach which is worth picking over and pilfering from:

- [kiro in claude code](https://www.reddit.com/r/ClaudeCode/comments/1m3pppk/kiro_spec_development_workflow_in_claude_code/)
- [kiro prompt](https://gist.github.com/marcelsud/7df7784150e5fb374b2e45f6ababbf0d)
- [spec driven agentic development](https://github.com/marcelsud/spec-driven-agentic-development)
