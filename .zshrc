# .zshrc
export ZSH="$HOME/.oh-my-zsh"
export QT_QPA_PLATFORM="wayland;xcb"

#ZSH_THEME="starship"

plugins=(git ) #zsh-autosuggestions) #zsh-syntax-highlighting fast-syntax-highlighting) #zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

fastfetch --logo-type file --file /home/ac/.ascii
# fastfetch --logo-type small

#aliases
alias blueon='sudo systemctl start bluetooth'
alias blueoff='sudo systemctl stop bluetooth'
alias blueon='sudo systemctl start bluetooth'
alias notes='sh /home/ac/.scripts/notes.sh'
alias v='nvim'
alias gr='setxkbmap gr'
alias α='setxkbmap us'
alias c='clear'
alias vm='sh /home/ac/.scripts/vm.sh'
alias gk='cat /home/ac/.gitk'
alias vim='nvim'
alias ll='ls -l -t --block-size=KB'
alias open='xdg-open'
alias digitalw='wine /home/ac/uni/log_sxed/DigitalWorks/DigitalWorks.exe'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias uni='nvim .obsidian/ac'
alias dihi='ping example.com'
alias idea='sh /home/ac/.scripts/idea.sh'
alias f='fastfetch'
alias bat-simple='bat --style=plain'
alias fastfetch='fastfetch --logo-type small'
alias ψλεαρ='clear'
alias fastfetch='fastfetch --logo-type file --file /home/ac/.ascii'
alias wake-tv='wol 3a:a3:6f:54:a2:25'

#hastebin
#function hb {
#    if [ $# -eq 0 ]; then
#        echo "No file path specified."
#        return
#    elif [ ! -f "$1" ]; then
#        echo "File path does not exist."
#        return
#    fi
#
#    uri="https://bin.andreascharalambous.xyz/documents"
#    response=$(curl -s -X POST -d "$(cat "$1")" "$uri")
#    if [ $? -eq 0 ]; then
#        hasteKey=$(echo $response | jq -r '.key')
#        echo "https://bin.andreascharalambous.xyz/$hasteKey"
#    else
#        echo "Failed to upload the document."
#    fi
#}

#screenshots
export XDG_SCREENSHOTS_DIR=~/screens

#theme
eval "$(starship init zsh)"

#zoxide
eval "$(zoxide init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH=$HOME/.local/bin:$PATH
export TERM=xterm-256color
