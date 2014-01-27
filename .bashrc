# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias ll='ls -laF --color'

export LANG=ja_JP.UTF-8

source ~/.git-prompt
source ~/.git-completion
PS1="[\u@\h \W\$(__git_ps1)]\$ "
