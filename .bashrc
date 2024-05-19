#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#preferred editor
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

fastfetch

#aliases
alias blueon='sudo systemctl start bluetooth'
alias blueoff='sudo systemctl stop bluetooth'
alias blueon='sudo systemctl start bluetooth'
alias notes='sh /home/ac/.scripts/notes.sh'
alias v='nvim'
alias gr='setxkbmap gr'
alias α='setxkbmap us'
alias c='clear'
alias vm='./.scripts/vm.sh'
alias gk='cat /home/ac/.gitk'
alias vim='nvim'
alias ll='ls -l'
alias open='xdg-open'
alias digitalw='wine /home/ac/uni/log_sxed/DigitalWorks/DigitalWorks.exe'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias uni='nvim .obsidian/ac'
alias dihi='ping example.com'
alias idea='sh /home/ac/.scripts/idea.sh'
alias f='fastfetch'
alias cp='cp -i'
alias cat='bat'

#theme
eval "$(starship init bash)"

eval "$(zoxide init bash)"
