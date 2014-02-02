# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -f ~/.bashrc.local ]; then
	. ~/.bashrc.local
fi

# disable stty stop for i-search
stty stop undef

case "${OSTYPE}" in
darwin*)
    alias ls="gls --color"
    alias ll="gls -laF --color"
    ;;
linux*)
    alias ls='ls --color'
    alias ll='ls -laF --color'
    ;;
esac

export LANG=ja_JP.UTF-8

source ~/.git-prompt
source ~/.git-completion
PS1="[\u@\h \W\$(__git_ps1)]\\\$ "
