#!/usr/bin/env bash
set -euo pipefail

NOTES='./noter.txt';

if [[ -e ${NOTES} ]] && [[ -f ${NOTES} ]]; 
then
	# awk '{ for (i=8;i<=NF;i++) printf "%s ",$i; print ""; }' ${NOTES};
	awk '{ for (i=1;i<=NF;i++) printf "%s ",$i; print ""; }' ${NOTES};
	# awk '{ for (i=1;i<=NF;i++) printf "%s ",$i; print ""; }' ${NOTES};
else
	echo "No ${NOTES} found";
fi

exit 0

