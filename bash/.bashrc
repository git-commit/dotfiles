export PATH=$PATH:/home/snowdragon/.dotfiles/bin/:/home/snowdragon/Programs/shell/:/home/snowdragon/.gem/ruby/2.2.0/bin
export EDITOR="vim"
export JAVA_HOME="/usr/lib/jvm/default"
export M2_HOME=/opt/maven/
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

#Aliases
alias updatesystem='sudo pacman -Syu && yaourt -Syua'
alias pkg-update='sudo etckeeper pre-install && sudo pacman -Syu && sudo etckeeper post-install'

#Aliases for colored output
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias grep="grep --color=auto"
alias dmesg="dmesg --color"
alias pacrm="sudo pacman -Rnss"
alias arduino="sudo stty -F /dev/ttyUSB0 cs8 115200 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts"

#Archey
archey
