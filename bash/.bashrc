# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions

if  [ "$(id -u)" != "0" ]; then
    # green user prompt
    PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \$\[\e[0m\] '
    # become root, but with my .bashrc
    alias sup='sudo bash --rcfile ~/.bashrc'
    # run vim, but with my .vimrc and plugins
    alias suvim='sudo HOME=~ vim -N config/config.ini'
else
    source "/root/.bashrc"
    # red (root) prompt
    PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
fi

# Common (normal *and* root) aliases
alias ll='ls -alF'

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# See http://www.reddit.com/r/vim/comments/1u0ro6/i_had_no_idea_vishortcuts_existed_in_bash/
set -o vi

# Allow host-specific overriding
if [ -f "${HOME}/.bash_local" ]; then
  source "${HOME}/.bash_local"
fi
