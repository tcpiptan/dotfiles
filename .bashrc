# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# disable stty stop for i-search
stty stop undef

alias ll='ls -laF --color'

export LANG=ja_JP.UTF-8

source ~/.git-prompt
source ~/.git-completion
if [ `id -u` == 0 ]; then
    PS1="[\u@\h \W\$(__git_ps1)]# "
else
    PS1="[\u@\h \W\$(__git_ps1)]\$ "
fi
