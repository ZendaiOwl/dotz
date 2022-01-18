#!/bin/bash
# @ZendaiOwl
if [ "$#" -lt 1 ]; then
	colour="$1"
	reset="$(tput sgr0)"
	printf '%s' "$colour$1$reset"
elif [ "$#" -eq 2 ] && [ "$1" -gt 0 ] && [ "$1" -lt 256 ]; then
		reset="$(tput sgr0)"
		c1="$(tput setaf $1)"
			printf '%s' "$c1$2$reset"
			printf '\n';
elif [ "$#" -eq 4 ] && 
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] &&
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ]; then
		reset="$(tput sgr0)"
		c1="$(tput setaf $1)"
		c2="$(tput setaf $3)"
			printf '%s ' "$c1$2$c2$4$reset"
			printf '\n';
elif [ "$#" -eq 6 ] &&
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] && 
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ] && 
		[ "$5" -gt 0 ] && [ "$5" -lt 256 ]; then
		reset="$(tput sgr0)"
		c1="$(tput setaf $1)"
		c2="$(tput setaf $3)"
		c3="$(tput setaf $5)"
			printf '%s ' "$c1$2$c2$4$c3$6$reset"
			printf '\n';
elif [ "$#" -eq 8 ] &&
		[ "$1" -gt 0 ] && [ "$1" -lt 256 ] && 
		[ "$3" -gt 0 ] && [ "$3" -lt 256 ] && 
		[ "$5" -gt 0 ] && [ "$5" -lt 256 ] &&
		[ "$7" -gt 0 ] && [ "$7" -lt 256 ]; then
		reset="$(tput sgr0)"
		c1="$(tput setaf $1)"
		c2="$(tput setaf $3)"
		c3="$(tput setaf $5)"
		c4="$(tput setaf $7)"
			printf '%s' "$c1$2$c2$4$c3$6$c4$8$reset"
			printf '\n';
else
echo "Usage: [Colour nr1] [String 1] [Colour nr2] [String 2] [Colour nr3] [String 3] [Colour nr4] [String 4]"
echo "Maximum is 8, 4 colours and 4 strings"
echo "Allowed colour numbers are within the range of 1 to 255"
fi

exit
