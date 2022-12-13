#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

complete -cf sudo

shopt -s autocd

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PS1
export VISUAL=nano
export EDITOR=nano

# PS1='[\u@\h \W]\$ '
PS1=$'\[\033[0;36m\]\W \u05D0\[\033[0m\] '
