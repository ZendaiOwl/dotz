#!/usr/bin/env bash
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
# 	
# 	Reset 		\e[0m || \033[0m

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
# No Color
NC='\033[0m'
PREFIX="${GREEN}DEBUG${NC}"

function debug {
echo -e "${PREFIX}" "${@}"
}

echo -e ${PREFIX} ${@}

exit
