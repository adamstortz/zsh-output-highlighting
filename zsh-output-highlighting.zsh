#!/bin/zsh
HIGHLIGHT_THEME=${$HIGHLIGHT_THEME:=$ZSH/custom/plugins/zsh-output-highlighting/molokai.theme}
cat sed awk grep() {
  syntax=""
  type highlight > /dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    for file in $@; do
      if [ -f $file ]; then
        filename=$(basename -- "$file")
        case $file in 
          *.js | *.ts) syntax="${filename##*.}";;
        esac 
      fi
    done
  fi
  if [[ $syntax != "" ]]; then
    command $0 $@ | highlight -O truecolor --config-file=$HIGHLIGHT_THEME --syntax=$syntax
  else
    command $0 $@
  fi
}