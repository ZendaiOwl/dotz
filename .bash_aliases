# Displays a full GNU v2 license in the terminal
alias fullLicense=fullLicense.sh
# Displays a minimal GNU v2 license in the teminal
alias license=license.sh
# List content in current working directory, does not show .files
alias lsd=lsd.sh
# List content in specified directory, does show .files.
# If no directory is specified it shows the content of $HOME
alias lsda=lsda.sh
# List all directories and files in a tree structure 
alias show=show.sh
# Show Linux/UNIX permissions information in the terminal
alias permission=permissions.sh
# Generates a password using /urandom
alias pwdgen=pwdgen.sh
# Records the output of a command to a textfile 
alias rec=record.sh
# Records an interactive terminal session - Do Not Use With Scripts!
alias rec-interact=rec-interactive.sh
# A shortcut for killing processes that are retained when the
# chroot environment fails during a build script.
alias kX='sudo kill -9'
# Shows running processes for a loop device
alias showLoop=showLoop.sh
# Emojis in the terminal
alias emote=emojis.sh
# Replace text in a file, $1 = old text, $2 = new text, $3 = file/path to file
alias replace=replace.sh
# For my dotfiles, configurations and scripts
alias dotz="/usr/bin/git --git-dir=$HOME/.dotz/ --work-tree=$HOME"
# Shortcut for Micro terminal text editor
alias m="micro"
# Shortcut for connecting to my raspberry pi in my local network
alias berry="ssh -p 3399 zendai@berrybox.local"
# Read file content to STDOUT or terminal
alias rd=rd.sh
