#!/bin/sh
set -euo pipefail
# From pre-built binary, with Shell.
# To update simply re-run it.
sh -c "$(sudo curl -fsSL https://starship.rs/install.sh)"

# Note 
# The defaults of the install script can be overridden see the built-in help.
# sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --help

# Add this at the end of ~/.bashrc
# ~/.bashrc
# eval "$(starship init bash)"

exit
