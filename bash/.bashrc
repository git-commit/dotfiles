export PATH=$PATH:/home/snowdragon/.dotfiles/bin/:/home/snowdragon/Programs/shell/:/home/snowdragon/.gem/ruby/2.2.0/bin
export EDITOR="vim"
export VISUAL="vim"
export JAVA_HOME="/usr/lib/jvm/default"
export M2_HOME=/opt/maven/
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

#Aliases
alias updatesystem='sudo pacman -Syu && yaourt -Syua'
alias pkg-update='sudo etckeeper pre-install && sudo pacman -Syu && sudo etckeeper post-install'
alias pacclean='sudo pacman -Sc'
alias pacclean-hard='sudo pacman -Scc'
alias rlbrc='source ~/.bashrc'
alias dstatus="dropbox-cli status"
alias yupdevel="yaourt -Syua --noconfirm --devel"
alias packetsize="expac '%m\t%n' | sort -h"
alias packetsize2="expac '%n %m' -l'\n' -Q $(pacman -Qq) | sort -rhk 2 | less"
alias pipinst="pip install --user"
alias down='aria2c --conf-path=${HOME}/.dotfiles/aria2.conf'

#Aliases for colored output
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias grep="grep --color=auto"
alias dmesg="dmesg --color"
alias pacrm="sudo pacman -Rnss"
alias arduino="sudo stty -F /dev/ttyUSB0 cs8 115200 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts"

#python virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/bin/virtualenvwrapper.sh

#Archey
archey

# Use npm without sudo
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
