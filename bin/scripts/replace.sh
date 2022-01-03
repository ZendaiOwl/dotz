#!/bin/bash
# Replaces text in a file
# 1 = Old text
# 2 = New text
# 3 = File
# @ZendaiOwl
colour() {
if [ $# -lt 1 ]; then
	echo "$(tput setaf "$1")$1$(tput sgr0)"
elif [ $# -eq 2 ] && [ "$1" -gt 0 ] && [ "$1" -lt 256 ]; then
			echo -e "$(tput setaf "$1")$2$(tput sgr0)"
elif [ $# -eq 4 ] && 
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] &&
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ]; then
			echo -e "$(tput setaf "$1")$2$(tput setaf "$3")$4$(tput sgr0)"
elif [ $# -eq 6 ] &&
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] && 
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ] && 
		[ "$5" -gt 0 ] && [ "$5" -lt 256 ]; then
			echo -e "$(tput setaf "$1")$2$(tput setaf "$3")$4$(tput setaf "$5")$6$(tput sgr0)"
elif [ $# -eq 8 ] &&
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] && 
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ] && 
		[ "$5" -gt 0 ] && [ "$5" -lt 256 ] &&
		[ "$7" -gt 0 ] && [ "$7" -lt 256 ]; then
			echo -e "$(tput setaf "$1")$2$(tput setaf "$3")$4$(tput setaf "$5")$6$(tput setaf "$7")$8$(tput sgr0)"
else
	for i in "${@:2}"; do printf '%s ' "$(tput setaf "$1")$i$(tput sgr0)"; done
	printf '\n'
fi
}

if [ $# -eq 3 ]; then
colour 15 "Replacing " 226 "$1" 15 " with " 226 "$2";
sed -i "s/${1}/${2}/g" ${3}
else
echo "Usage: [Old Text] [New Text] [File Path]"
fi

exit
