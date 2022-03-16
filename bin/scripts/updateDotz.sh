#!/usr/bin/env bash
set -euo pipefail
# Updates my Dotz.git dotfiles repository
# For my dotfiles, configurations and scripts
dotz="/usr/bin/git --git-dir=$HOME/.dotz/ --work-tree=$HOME"
${dotz} add /home/zendai/bin/scripts/* || exit 1
${dotz} add ${HOME}/.profile || exit 1
${dotz} add ${HOME}/.bash_aliases || exit 1
${dotz} commit -s -m "࿓❯ Updating Dotz scripts" || exit 1
${dotz} push || exit 1
exit
