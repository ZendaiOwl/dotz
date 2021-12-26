#!/bin/bash
# It will show a graphical representation of the current working directory's sub-directories.
# @ZendaiOwl
FORMAT="'%s\n' '%s\n' '%s\n'"
for d in ./*; do printf "$FORMAT" "${d##./}"; done
exit
