#!/bin/bash
# This script prints my signature to the terminal or 
# as STDOUT to a file or as another scripts STDIN.
# @author Victor-ray ( ZendaiOwl )

author()
{
local author
author="Victor-ray ( ZendaiOwl )"
echo "$(tput setaf 75)$author$(tput sgr0)"
}

username()
{
local username
username="$(tput setaf 75)ZendaiOwl$(tput sgr0)"
echo "$username"
}

if [ $# -eq 0 ]
then
  author
elif [ "$*" == "--github-username" ]
then
  username
else
  echo "$(tput setaf 196)Invalid argument$(tput sgr0)"
fi


exit
