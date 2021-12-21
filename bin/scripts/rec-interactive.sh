#!/bin/bash
if [ ! -f x-terminal-session-interactive.txt ] ; then
echo ":: Creating file :: x-terminal-session-interactive.txt ::"
script x-terminal-session-interactive.txt
else
echo ":: File exist :: Appending.. ::"
script -a x-terminal-session-interactive.txt
fi
exit
