#!/usr/bin/env bash
set -euo pipefail
# Updates my Dotz.git dotfiles repository
# For my dotfiles, configurations and scripts
if [[ $# == 0 ]]; then
	message="࿓❯ Updating Dotz scripts"
else
	message="࿓❯ $1"
fi
dotz="/usr/bin/git --git-dir=$HOME/.dotz/ --work-tree=$HOME"
${dotz} add /home/zendai/bin/scripts/* || exit 1
${dotz} add ${HOME}/.profile || exit 1
${dotz} add ${HOME}/.bash_aliases || exit 1
${dotz} commit -s -m "$message" || exit 1
${dotz} push || exit 1
exit
