#!/bin/bash
# @author Victor-ray ( ZendaiOwl )
# https://github.com/ZendaiOwl
#
if [ "$1" -gt 0 ] && [ "$1" -lt 256 ]; then
if [ $# -lt 1 ]; then
    echo "$(tput setaf "$1")$1$(tput sgr0)"
  else
  for i in "${@:2}"; do printf '%s ' "$(tput setaf "$1")$i$(tput sgr0)"; done
  printf '\n'
  fi
else
  echo "$(tput setaf 196)Usage: $(tput setaf 226)$0 <number> <string> <string> ...$(tput sgr0)";
fi

exit