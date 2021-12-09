# Generate build files by hitting "m<enter>"
# or "m<Ctrl+m>" (Ctrl+M is a replacement for "<enter>")
alias m="cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G Ninja"
alias md="cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G Ninja"
# Compile by hitting "j<enter>"    
# or "j<Ctrl+j>" (Ctrl+J is a replacement for "<enter>")
alias j="ninja -j1"

alias lcdb="ln -s build/compile_commands.json compile_commands.json"

# Just stream the file passed as an argument
alias tailf="tail -f"

# Last modified file in a directory
alias lastmod="ls -Art | tail -n 1"

# A bit of safety for rm
alias rm="rm -I --preserve-root"

alias g="git"
alias ft="cd ~/Workspace/project/firetrade/"
alias ftt="cd ~/Workspace/project/firetrade/technical"
