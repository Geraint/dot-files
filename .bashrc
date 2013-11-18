# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \$\[\e[0m\] '

#export RUBYLIB="${HOME}/workspace/ruby-utils/"
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
#complete -C ${HOME}/ruby-bin/rake-completion.rb -o default rake

# Allow overriding
if [ -f "${HOME}/.bash_local" ]; then
  source "${HOME}/.bash_local"
fi

