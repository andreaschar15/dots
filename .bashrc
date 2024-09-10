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
alias idea='sh /home/ac/.scripts/idea.sh'
alias cp='cp -i'
#alias cat='bat'
#alias ssh='kitty +kitten ssh'

#hastebin
function hb {
    if [ $# -eq 0 ]; then
        echo "No file path specified."
        return
    elif [ ! -f "$1" ]; then
        echo "File path does not exist."
        return
    fi

    uri="https://bin.andreascharalambous.xyz/documents"
    response=$(curl -s -X POST -d "$(cat "$1")" "$uri")
    if [ $? -eq 0 ]; then
        hasteKey=$(echo $response | jq -r '.key')
        echo "https://bin.andreascharalambous.xyz/$hasteKey"
    else
        echo "Failed to upload the document."
    fi
}


#theme
eval "$(starship init bash)"

eval "$(zoxide init bash)"
export LD_LIBRARY_PATH=/opt/Lanxin-MRDVS/lib/:$LD_LIBRARY_PATH
