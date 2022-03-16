#!/usr/bin/env bash
set -euo pipefail
# 	Text Colours
# 	Black		\e[0;30m || \033[0;30m
# 	Orange 		\e[0;31m || \033[0;31m
# 	Green		\e[0;32m || \033[0;32m
# 	Yellow		\e[0;33m || \033[0;33m
# 	Blue		\e[0;34m || \033[0;34m
# 	Red 		\e[0;35m || \033[0;35m
# 	Gray		\e[0;36m || \033[0;36m
# 	Light Gray	\e[0;37m || \033[0;37m
# 	White		\e[0;38m || \033[0;38m
# 	White		\e[0;39m || \033[0;39m
# 	
# 	Background Colours
# 	Black        \e[0;40m || \033[0;40m
# 	Red          \e[0;41m || \033[0;41m
# 	Green        \e[0;42m || \033[0;42m
# 	Yellow       \e[0;43m || \033[0;43m
# 	Blue         \e[0;44m || \033[0;44m
# 	Purple       \e[0;45m || \033[0;45m
# 	Cyan         \e[0;46m || \033[0;46m
# 	White        \e[0;47m || \033[0;47m
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
# No Color
NC='\e[0m'

function debug {
	echo -e "${GREEN}Example${NC}:" "$@"
}

# Just to have a note of it somewhere
# It is possible to create a TAB in the terminal using Ctrl + V + I 
# It is possible to create a NewLine in the terminal using Ctrl + V + J
echo -e "\\e[0;40mBackground in Black Color\\e[0m"""
echo -e "\\e[0;41mBackground in Red Color\\e[0m"""
echo -e "\\e[0;42mBackground in Green Color\\e[0m"""
echo -e "\\e[0;43mBackground in Yellow Color\\e[0m"""
echo -e "\\e[0;44mBackground in Blue Color\\e[0m"""
echo -e "\\e[0;45mBackground in Purple Color\\e[0m"""
echo -e "\\e[0;46mBackground in Cyan Color\\e[0m"""
echo -e "\\e[0;47mBackground in White Color\\e[0m"""

debug "← Demonstration of colour"

exit
