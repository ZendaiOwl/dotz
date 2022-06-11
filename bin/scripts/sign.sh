#!/usr/bin/env bash
set -euo pipefail
# This script prints my signature to the terminal or 
# as STDOUT to a file or as another scripts STDIN.
# @author ZendaiOwl <victorray91@pm.me>
# Signed-off-by: Zendai Owl <victorray91@pm.me>
CLR="$(tput setaf 75)"
ERR="$(tput setaf 196)"
RS="$(tput sgr0)"
FNAME="Victor-ray";
LNAME="S.";
AUTHR="@AUTHOR";
EMAIL="<victorray91@pm.me>";
SIGN="${FNAME}, ${LNAME}";
USRNAME="ZendaiOwl";
signature="Signed-off-by: Victor-ray S. <victorray91@pm.me> (Zendai Owl)"

author()
{
local author
author="@author ZendaiOwl <victorray91@pm.me>"
echo -e "${CLR}$author${RS}"
}

signature()
{
local signature
echo -e "${CLR}$signature{[@]}${RS}";
}

username()
{
local username
username="ZendaiOwl"
echo -e "${CLR}$username${RS}"
}

all() {
	local ALL
	ALL="$signature";
	echo -e "${ALL[@]}";
}

if [ $# -eq 0 ]; then
  echo "I'm a teapot."
  all
elif [ "*" == "--all" ]; then
  all
elif [ "$*" == "--author" ]; then
  author
elif [ "$*" == "--signature" ]; then
  signature
elif [ "$*" == "--username" ]; then
  username
else
  echo "${ERR}Invalid argument${RS}"
fi

exit
