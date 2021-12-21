#!/bin/bash
# Replaces text in a file
# 1 = Old text
# 2 = New text
# 3 = File 
sed -i "s/${1}/${2}/g" ${3}
exit
