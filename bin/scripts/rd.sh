#!/usr/bin/env bash
set -euo pipefail
# This is a function to use $(<) for reading files to STDOUT
if [[ -f $1 ]]; then
	printf '%s\n' "$(<$1)"
else
	printf '%s\n' "Not a file"
fi
exit
