#!/usr/bin/env bash
set -euo pipefail

NAME="${1}.sh";
shift
echo "$NAME";
DIRNAME=$(dirname "${BASH_SOURCE}");
echo "$DIRNAME";
NEW="${DIRNAME}/${NAME}";
echo "$NEW";



if [[ $# -gt 0 ]] ; then

TEMPLATE="#!/usr/bin/env bash
set -euo pipefail

${@}

exit 0
";

else

TEMPLATE='#!/usr/bin/env bash
set -euo pipefail

exit 0
';

echo "$TEMPLATE";

fi


if [[ -e "$NEW" && -f "$NEW" ]]; then
	read -rp "
The \"$NAME\" script already exists 
Overwrite $NAME? (Y/N): " input;
	if [[ "$input" == "y" || $input == "Y" ]]; then
		printf '\n%s' "Overwriting.. ";
		echo "$TEMPLATE" > "$NEW";
		printf '%s' "Executable.. ";
		chmod +x "$NEW";
		printf '%s\n' "Done ✔";
		exit 0;
	elif [[ "$input" == "n" || "$input" == "N" ]]; then
		printf '%s\n' "\"N/n\" selected, exiting..";
		exit 0;
	fi
elif [[ ! -e "$NEW" ]]; then
	printf '%s\t%s\n%s\t%s\n\n' "Directory:" "$DIRNAME" "Script Name:" "$NAME";
	printf '%s' "Creating.. ";
	echo "$TEMPLATE" > "$NEW";
	printf '%s' "Executable.. ";
	chmod +x "$NEW";
	printf '%s\n' "Done ✔";
	exit 0;
else
	printf '%s\n' "No clue what happened";
	exit 1;
fi

exit 0
