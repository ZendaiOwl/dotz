#!/bin/bash
# @ZendaiOwl
# This function uses /dev/urandom to generate a password
# randomly with commonly allowed password characters. 
# It is possible to design the length of the password by 
# using an integer as a second args when invoking the function.
# Ex.
# < /dev/urandom tr -dc _A-Z-a-z-0-9-_-_*-+---/- | head -c${1:-32};echo;
#
# This one below uses the most commonly allowed password characters 

< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;

exit
