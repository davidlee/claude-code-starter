claude-files-import path:
  echo "this is destructive; commit or stash your changes first!"
  .script/import-claude-files.sh {{path}}

claude-logs:
  uvx claude-code-log --open-browser

claude-usage:
  ccusage

serena-uvx:
  uvx --from git+https://github.com/oraios/serena serena-mcp-server

claude-introduce-serena-uvx:
  claude mcp add serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)


