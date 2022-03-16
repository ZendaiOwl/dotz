#!/usr/bin/env bash
set -euo pipefail
curl -o eget.sh https://zyedidia.github.io/eget.sh
# Verify the hash
# shasum -a 256 eget.sh
# 0e64b8a3c13f531da005096cc364ac77835bda54276fedef6c62f3dbdc1ee919
echo "Checking SHA256.."
echo "0e64b8a3c13f531da005096cc364ac77835bda54276fedef6c62f3dbdc1ee919 ./eget.sh" | sha256sum -c
exit
