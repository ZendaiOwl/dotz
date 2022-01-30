#!/usr/bin/env bash
# This script records the output of a command to a text file
# @ZendaiOwl
# Colours
colour() {
if [ $# -lt 1 ]; then
	echo "$(tput setaf "$1")$1$(tput sgr0)"
elif [ $# -eq 2 ] && [ "$1" -gt 0 ] && [ "$1" -lt 256 ]; then
			echo "$(tput setaf "$1")$2$(tput sgr0)"
elif [ $# -eq 4 ] && 
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] &&
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ]; then
			echo "$(tput setaf "$1")$2$(tput sgr0)$(tput setaf "$3")$4$(tput sgr0)"
elif [ $# -eq 6 ] &&
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] && 
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ] && 
		[ "$5" -gt 0 ] && [ "$5" -lt 256 ]; then
			echo "$(tput setaf "$1")$2$(tput sgr0)$(tput setaf "$3")$4$(tput sgr0)$(tput setaf "$5")$6$(tput sgr0)"
elif [ $# -eq 8 ] &&
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] && 
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ] && 
		[ "$5" -gt 0 ] && [ "$5" -lt 256 ] &&
		[ "$7" -gt 0 ] && [ "$7" -lt 256 ]; then
			echo "$(tput setaf "$1")$2$(tput sgr0)$(tput setaf "$3")$4$(tput sgr0)$(tput setaf "$5")$6$(tput sgr0)$(tput setaf "$7")$8$(tput sgr0)"
else
	for i in "${@:2}"; do printf '%s ' "$(tput setaf "$1")$i$(tput sgr0)"; done
	printf '\n'
fi
}

log_file="script_output.txt"

rec() { colour 46 "Recording " 226 "$1" 15 " to " 226 "$log_file";
		:>./"$log_file";
		$1 | tee -a "$log_file";
		colour 46 "Recording " 48 "Complete!"; exit; }

rec_file() { colour 46 "Recording " 226 "$1" 15 " to " 226 "$2";
			:>./"$2";
			$1 | tee -a "$2";
			colour 46 "Recording of " 226 "$1" 48 " Complete!"; exit; }

append() { colour 46 "Appending " 226 "$1" 15 " to " 226 "$log_file";
			$1 | tee -a "$log_file";
			colour 46 "Recording of " 226 "$1" 48 " Complete!"; exit; }

append_file() { colour 46 "Appending " 226 "$1" 15 " to " 226 "$2";
				$1 | tee -a "$2";
				colour 46 "Recording of " 226 "$1" 48 " Complete!"; exit; }

eXit() { colour 15 "Recording cancelled. Exiting.."; exit; }
invalid() { colour 196 "ERROR " 15 "Invalid choice: " 226 "$1"; exit; }

if [ $# -eq 0 ]
then
	colour 196 "ERROR " 15 "No command arguments to record supplied";
elif [ $# -eq 1 ]
then
	[[ -f "$log_file" ]] && {
		read -rp "$(tput setaf 226)$log_file$(tput sgr0) exist, append? (y/n)" input;
		if [ "$input" == "y" ] || [ "$input" == "Y" ]
		then
			append "$@";
		elif [ "$input" == "n" ] || [ "$input" == "N" ]
		then
			eXit;
		else
			invalid "$input";
		fi
		}
	if [ ! -f "$log_file" ]
	then
		rec "$@";
	fi
elif [ $# -eq 2 ]
then
	[[ -f $2 ]] && {
		read -rp "$2 $(tput setaf 226)exists$(tput sgr0), append? (y/n)" input;
		if [ "$input" == "y" ] || [ "$input" == "Y" ]
		then
			append_file "$@";
		elif [ "$input" == "n" ] || [ "$input" == "N" ]
		then
			eXit;
		else
			invalid "$input";
		fi
		}
	rec_file "$@";
else
	colour 196 "ERROR " 15 ": Invalid number of arguments";
	exit 0
fi
exit
