export PATH=$PATH:/home/snowdragon/.dotfiles/bin/:/home/snowdragon/Programs/shell/
export export GREP_OPTIONS='--color=auto'
export EDITOR="vim"
export JAVA_HOME="/usr/lib/jvm/default"

#Aliases
alias updatesystem='sudo pacman -Syu && yaourt -Syua'

#Aliases for colored output
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias grep="grep --color=auto"
alias dmesg="dmesg --color"
alias pacrm="sudo pacman -Rnss"

#Archey
archey
