#!/bin/bash
# @ZendaiOwl
for c in {0..255}; do echo "$(tput setaf "$c")$c$(tput sgr0)"; done | column
exit
