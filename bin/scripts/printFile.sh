#!/bin/bash

FILE=$1
printf '%s\n' "$(<$FILE)"
exit
