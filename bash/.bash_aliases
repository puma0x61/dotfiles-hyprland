#
# ~/.bash_aliases
#

alias plasma='startplasma-wayland'
alias raspi='ssh ploink@puma0x61.duckdns.org'

alias diff='colordiff'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

alias l='ls -l'
alias ll='ls -lha'
alias ld='ll --group-directories-first'
alias lz='ll -S' # Sort by size
alias lt='ll -t' # Sort by date
alias lx='ll -X' # Sort by extension

alias mount='systemd-mount'
alias umount='systemd-mount -u'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

alias cd..='cd ..'
alias :q='exit'
alias :Q='exit'
