# ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.
# Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Generate build files by hitting "m<enter>"
# or "m<Ctrl+m>" (Ctrl+M is a replacement for "<enter>")
alias  m="cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G Ninja"
alias md="cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -G Ninja"
# Compile by hitting "j<enter>"    
# or "j<Ctrl+j>" (Ctrl+J is a replacement for "<enter>")
alias j="ninja -j4"

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
