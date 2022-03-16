#!/usr/bin/env bash 
set -euo pipefail
set -euo pipefail
# This script adds a directory or file to the .gitignore 
# file in my local .dotz directory.
PATHWAY=$1
test -e $PATHWAY && {
echo "$PATHWAY" >> /home/zendai/.dotz/.gitignore
}

exit
