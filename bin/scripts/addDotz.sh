#!/usr/bin/env bash
set -euo pipefail

# Adds and updates Dotz.git repository
# Victor-ray, S. <victorray91@pm.me> (ZendaiOwl)

dotz="/usr/bin/git --git-dir=${HOME}/.dotz/ --work-tree=${HOME}"
scripts="${HOME}/bin/scripts/*"
profile="${HOME}/.profile"
aliases="${HOME}/.bash_aliases"
message="࿓❯ Updating Dotz scripts"

if [[ "${*}" -eq "-a" ]] || [[ "${*}" -eq "--add" ]]; then
	ADD=""
else
	message="࿓❯ ${@}"
fi

${dotz} add ${scripts} && 
${dotz} add ${profile} && 
${dotz} add ${aliases} && 
${dotz} commit -s -m ${message} && 
${dotz} push || exit 1

exit 0

