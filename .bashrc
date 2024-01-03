#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias blueon='sudo systemctl start bluetooth'
alias gr='setxkbmap gr'
alias α='setxkbmap us'
alias vm='./.scripts/vm.sh'
alias blueoff='sudo systemctl stop bluetooth'
alias gk='cat /home/ac/.gitk'
alias vim='nvim'
alias mew='cowsay mew'
alias ll='ls -l'
alias open='xdg-open'
#neofetch
