#!/bin/bash
# @ZendaiOwl
# This script records the output of a command to a text file

log_file="script_output.txt"

rec() { echo "$(tput setaf 87):: Recording :: $(tput setaf 226)$1$(tput setaf 87) :: $log_file ::$(tput sgr0)"
		:>./"$log_file"
		$1 | tee -a "$log_file"
		echo "$(tput setaf 46):: END ::$(tput sgr0)"; exit 0; }

rec_file() { echo "$(tput setaf 87):: Recording :: $(tput setaf 226)$1$(tput setaf 87) :: $(tput setaf 226)$2$(tput setaf 87) ::$(tput sgr0)"
			:>./"$2"
			$1 | tee -a "$2"; exit 0; }

append() { echo "$(tput setaf 50):: Appending :: $(tput setaf 226)$1$(tput setaf 50) ::$(tput sgr0)" | tee -a "$log_file"
			$1 | tee -a "$log_file"
			echo "$(tput setaf 46):: END :: $(tput setaf 226)$1$(tput setaf 46) ::$(tput sgr0)"; exit 0; }

append_file() { echo "$(tput setaf 50):: Appending :: $(tput setaf 226)$1$(tput setaf 50) :: $(tput setaf 226)$2$(tput setaf 50) ::$(tput sgr0)" | tee -a "$log_file"
				$1 | tee -a "$2"
				echo "$(tput setaf 46):: END :: Output written to $2 ::$(tput sgr0)"; exit 0; }

eXit() { echo "$(tput setaf 46):: END :: $(tput setaf 226)Exiting..$(tput setaf 46) ::$(tput sgr0)"; exit 0; }
invalid() { echo "$(tput setaf 196):: END :: Invalid choice :: $input ::$(tput sgr0)"; exit 0; }

if [ $# -eq 0 ]
then
	echo "	$(tput setaf 196):: ERROR :: Missing command argument to record ::$(tput sgr0)"
elif [ $# -eq 1 ]
then
	[[ -f "$log_file" ]] && {
		read -rp "$log_file $(tput setaf 226)exist, append? (y/n)$(tput sgr0) " input
		if [ "$input" == "y" ] || [ "$input" == "Y" ]
		then
			append "$@"
		elif [ "$input" == "n" ] || [ "$input" == "N" ]
		then
			eXit
		else
			invalid "$input"
		fi
		}
	if [ ! -f "$log_file" ]
	then
		rec "$@"
	fi
elif [ $# -eq 2 ]
then
	[[ -f $2 ]] && {
		read -rp "$2 $(tput setaf 226)exists, append? (y/n) $(tput sgr0)" input
		if [ "$input" == "y" ] || [ "$input" == "Y" ]
		then
			append_file "$@"
		elif [ "$input" == "n" ] || [ "$input" == "N" ]
		then
			eXit
		else
			invalid "$input"
		fi
		}
	rec_file "$@"
else
	echo "$(tput setaf 196):: ERROR :: Too many arguments :: [ Command to record output ] + [ Filename ] ::$(tput sgr0)"
	exit 0
fi
exit
