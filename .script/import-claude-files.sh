#!/bin/sh

if [[ "$#" -eq 0 ]]; then 
  echo "expects an argument: the path to another project"
  exit
fi

this_base=$(realpath $PWD)
that_base=$(realpath $1)

echo -e "Overwrite all CLAUDE.md files and .claude/commands/*.md with those from $that_base ?(y/n)"
read yn
if [[ $yn == "y" ]]; then

  for that_path in $(fd CLAUDE.md $that_base); do
    this_path="${that_path/$that_base/$this_base}"
    cp $that_path $this_path
  done

  for i in $that_base/.claude/commands/*.md; do
    cp $i .claude/commands/
  done
fi



