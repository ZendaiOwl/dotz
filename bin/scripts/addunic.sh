#!/usr/bin/env bash
set -euo pipefail

function addUC {
	local argz;
	argz="$@"
	if [[ -e "bin/scripts/unicode.txt" ]] && 
		[[ -r "bin/scripts/unicode.txt" ]] && 
		[[ -w "bin/scripts/unicode.txt" ]]; then
		local FILl;
		FILl="bin/scripts/unicode.txt";
		# echo "${argz[@]}" >> "${FIL}";
		printf '%s \t %s \n' "${argz[@]}" >> "${FILl}";
	else
		# printf '%s,' "${argz[@]}" > "${FIL}";
		local FILl;
		FILl="bin/scripts/unicode.txt";
		# echo "${argz[@]}" > "${FIL}";
		printf '%s \t %s \n' "${argz[@]}" > "${FILl}";
	fi
}

if [[ $# -gt 0 ]]; then
	args="$@";
	# echo "${args[@]}";
	echo "${args}";
	addUC "${args}";
	printf '%s\n' "Done";
else
	echo "No arguments.."
fi

exit 0
