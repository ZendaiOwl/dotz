#!/usr/bin/env bash
# Updates my Dotz.git dotfiles repository
# For my dotfiles, configurations and scripts
dotz="/usr/bin/git --git-dir=$HOME/.dotz/ --work-tree=$HOME"
${dotz} add /home/zendai/bin/scripts/*
${dotz} commit -m "࿓❯"
${dotz} push
exit
