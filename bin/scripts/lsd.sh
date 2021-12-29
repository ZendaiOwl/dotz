#!/bin/bash
# My own version of "ls", listing the current working directory's contents.
# @ZendaiOwl
for d in ./*; do printf '%s\n' "$(tput setaf 15)${d##./}$(tput sgr0)"; done | column -s '\n'
exit
