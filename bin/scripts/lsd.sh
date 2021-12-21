#!/bin/bash
# It will show a graphical representation of the current sub-directories without files in a few seconds,
# @ZendaiOwl
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
exit
