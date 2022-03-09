#!/bin/bash
ADDIR=$1
COMESSAGE=$2
COMSG="࿓❯ ${COMESSAGE}"
git add "$ADDIR" || exit 1
git commit -s -m "$COMSG" || exit 1
git push || exit 1
exit
