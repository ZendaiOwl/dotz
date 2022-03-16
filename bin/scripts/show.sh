#!/usr/bin/env bash
set -euo pipefail
# This command works to display both folders and files.
find . | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/" | column
exit
