#!/bin/bash
# Depends on 'psmisc' package.
LOOP=$1
sudo fuser -c /dev/loop${LOOP}
exit
