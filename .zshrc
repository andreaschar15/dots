# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
PS1='[\u@\h \W]\$ '
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias blueon='sudo systemctl start bluetooth'
alias sd='sh /home/ac/stable-diffusion-webui/webui.sh --use-cpu all --no-half --no-half-vae --skip-torch-cuda-test'
alias gr='setxkbmap gr'
alias α='setxkbmap us'
alias c='clear'
alias do-i-have-internet='nmcli connection show'
alias vm='./.scripts/vm.sh'
alias blueoff='sudo systemctl stop bluetooth'
alias gk='cat /home/ac/.gitk'
alias vim='nvim'
alias mew='cowsay mew'
alias say='cowsay'
alias luv='cowsay I LUV YOU'
alias ll='ls -l'
alias open='xdg-open'
alias digitalw='wine /home/ac/uni/log_sxed/DigitalWorks/DigitalWorks.exe'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias downloads='cd Downloads'

fortune | cowsay

# Created by `pipx` on 2024-01-29 22:22:31
export PATH="$PATH:/home/ac/.local/bin"