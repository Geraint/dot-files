# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if  [ "$(id -u)" != "0" ]; then
    # become root, but with my .bashrc
    alias sup='sudo bash --rcfile ~/.bashrc'
    alias level-up='sh -c "cd ~/dot-files; git pull; git submodule update --init"'
    # user prompt
    PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \$\[\e[0m\] '
else
    source "/root/.bashrc"
    # root prompt
    PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
fi 

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# See http://www.reddit.com/r/vim/comments/1u0ro6/i_had_no_idea_vishortcuts_existed_in_bash/
set -o vi

# Allow host-specific overriding
if [ -f "${HOME}/.bash_local" ]; then
  source "${HOME}/.bash_local"
fi

