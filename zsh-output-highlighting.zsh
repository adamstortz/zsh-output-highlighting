#!/bin/zsh
cat sed awk grep() {
  syntax=""
  type highlight > /dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    for file in $@; do
      if [ -f $file ]; then
        filename=$(basename -- "$file")
        syntax="${filename##*.}"
      fi
    done
  fi
  if [[ $syntax != "" ]]; then
    command $0 $@ | highlight -O ansi --syntax=$syntax
  else
    command $0 $@
  fi
}