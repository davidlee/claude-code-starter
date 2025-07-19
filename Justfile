# to import the latest upstream changes into your project
# from https://github.com/davidlee/claude-code-starter
# (or your fork), pass the path to your checkout:
# $ just claude-files-import ~/dev/claude-code-starter/

# in your project's Justfile, you might want to hardcode this to
# point at your local checkout.

# Note: this copies markdown only, not the Justfile itself.

claude-files-import path:
  echo "this is destructive; commit or stash your changes first!"
  .script/import-claude-files.sh {{path}}

# view your session history
claude-logs:
  uvx claude-code-log --open-browser

# see why you're lucky you didn't use API billing
claude-usage:
  ccusage

# runs the MCP server process
serena-uvx:
  uvx --from git+https://github.com/oraios/serena serena-mcp-server

# you only need to do this once
claude-introduce-serena-uvx:
  claude mcp add serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)

