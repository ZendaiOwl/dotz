#!/usr/bin/env bash
set -euo pipefail
# Replaces text in a file
# 1 = Old text
# 2 = New text
# 3 = File
# @ZendaiOwl
O=$(tput setaf 208)
G=$(tput setaf 48)
W=$(tput setaf 15)
Z=$(tput sgr0)
PFX="${G}REPLACE${Z}"
colour() {
	printf '%-7.24s %-s\n' "${PFX}:" "${@}"
}

if [ $# -eq 3 ]; then
colour "$1 with $2"
sed -i "s/${1}/${2}/g" ${3}
else
echo "Usage: [Old Text] [New Text] [File Path]"
fi

exit
