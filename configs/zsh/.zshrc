$HOME/.scripts/apply_wallpaper_theme.sh

export ZSH="/home/mrcz/.oh-my-zsh"

ZSH_THEME="mrczlnks"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export SHELL=zsh
export PAGER=less
export FILE=ranger
export TERMINAL=alacritty
export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox

export GPG_TTY=$(tty)

autoload -Uz compinit promptinit
compinit
promptinit

alias l='ls -lah --color=auto --group-directories-first'

# docker aliases and functions
alias dockertop='sudo docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}"'

dsac() { sudo docker stop $(sudo docker ps -a -q); }
dkac() { sudo docker kill $(sudo docker ps -a -q); }
drac() { sudo docker rm $(sudo docker ps -a -q); }
drai() { sudo docker rmi $(sudo docker images -a -q); }

alias tree='tree -a -I .git'

findtext() {
    grep -Rn "$1" $2
}

findtextfn() {
    grep -Rl "$1" $2
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $HOME/.secrets

path+=("$HOME/.scripts")
export PATH
