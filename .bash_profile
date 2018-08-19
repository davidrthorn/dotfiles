# # Custom commands

# # Redefine cd to list folder contents
# function cd() { builtin cd "$@" && ls --color=always --group-directories-first; }
# function gca() { git add --all && git commit; }

# alias mkdir="mkdir -p"
# alias la="ls -A"
# alias ll="ls -l"
# alias lg="ls --group-directories-first"
# alias lga="ls -A --group-directories-first"
# alias lgl="ls -l --group-directories-first"
# alias v="nvim"
# alias ..="cd .."
# alias ...="cd ../.."

# # Make sudo work with aliases
# alias sudo="sudo "

# # Specific
# alias s="npm start"

# # DEFAULTS

# export VISUAL=nvim
# export EDITOR="$VISUAL"

# # BASH PROGRAMS
# . /usr/share/autojump/autojump.sh

# source ~/.bashrc
