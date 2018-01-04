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
alias gotty='gotty --permit-write --address 127.0.0.1 tmux'
alias 7zmax='7z a -r -mx=9 -myx=9 -ms=on -mf=on -mtm=off'
alias xzmax='XZ_OPT=-9e tar --verbose --create --xz --file'
alias ls='ls -gh'
alias rm='rm --one-file-system -I'
alias n='TERM=xterm micro'
alias ydmp3='youtube-dl -f bestaudio -i -x --audio-format mp3'
alias ydavc='youtube-dl -f worstvideo[ext=mp4]+worstaudio[ext=m4a]'
alias git-crush='git reflog expire --all --expire=now && git gc --prune=now --aggressive'
alias feh='feh -Z -F'
alias smbclient='smbclient -U houghton\\jonathan.craton'
alias aria2c16='aria2c -j 16 -x 16 -s 16 -k 4M'
alias clip='xclip -i -selection clipboard'
alias vera-mount='veracrypt "/dropbox/share/Jon and Karin/finance/secure.hc"'
alias comp-pdf='gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -sOutputFile=-'
alias weather='curl wttr.in/'
alias rclone='rclone --exclude "*.pyc" --exclude "__pycache__"'
alias f='find . -not -ipath "*/.git/*" -not -ipath "*/.cargo/*" -not -ipath "*/node_modules/*" -not -ipath "*/__pycache__/*" -not -iname "*.pyc"'

export PATH=$PATH:~/bin
export EDITOR="/usr/local/bin/micro"
mkdir -p ~/go
export GOPATH=~/go
export GOBIN=~/go/bin

transset -a .8 > /dev/null 2> /dev/null
GLOBIGNORE=".:.."

xrdb ~/.Xresources