claude-files-import path:
  echo "this is destructive; commit or stash your changes first!"
  .script/import-claude-files.sh {{path}}

claude-logs:
  uvx claude-code-log --open-browser

claude-usage:
  npx ccusage@latest


