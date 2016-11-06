# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PS1='\u:\w\$ '

# aliases
alias 7zmax='7z a -r -mx=9 -myx=9 -ms=on -mf=on -mtm=off' 
alias ls='ls -gh'
alias rm='rm --one-file-system -I'
alias vim='micro'
alias nano='micro'
alias n='micro'
alias e='micro'
alias youtube-dl-mp3='youtube-dl -f bestaudio -i -x --audio-format mp3'
alias git-crush='git reflog expire --all --expire=now && git gc --prune=now --aggressive'
alias feh='feh -Z -F'
alias smbclient='smbclient -U houghton\\jonathan.craton'

export PATH=$PATH:~/bin
export EDITOR="/usr/local/bin/micro"
mkdir -p ~/go
export GOPATH=~/go
export GOBIN=~/go/bin

transset -a .8 > /dev/null 2> /dev/null