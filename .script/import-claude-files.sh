#!/bin/sh

this_base=$(realpath $PWD)
that_base=$(realpath $1)

echo -e "Overwrite all CLAUDE files and commands with those from $that_base ?(y/n)"
read yn
if [[ $yn == "y" ]]; then

  for that_path in $(fd CLAUDE.md $that_base); do
    this_path="${that_path/$that_base/$this_base}"
    echo "mv $that_path --> $this_path"
  done

  for i in $that_base/.claude/commands/*.md; do
    echo "cp $i .claude/commands/"
  done
fi



