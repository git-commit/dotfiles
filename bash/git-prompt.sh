source /usr/share/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="$purple\u$green\$(__git_ps1)\$blue \W $ $reset"
export PROMPT_COMMAND='__git_ps1 "max@vostro:\w" "\\\$ "'

