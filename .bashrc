# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

if  [ "$(id -u)" != "0" ]; then
    PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \$\[\e[0m\] '
else 
    PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
    # line numbers, color and syntax hilighting in vim
    alias vimg='vim -u ~/.vimgrc'
fi 

# See http://www.reddit.com/r/vim/comments/1u0ro6/i_had_no_idea_vishortcuts_existed_in_bash/
set -o vi

# Allow overriding
if [ -f "${HOME}/.bash_local" ]; then
  source "${HOME}/.bash_local"
fi

