# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Use ** for recursive matching
shopt -s globstar

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Basic prompt, but with a hack to always keep the prompt at the bottom
PS1='\n\w$ '

# aliases
alias n='TERM=xterm micro'
alias ls='ls -g --human-readable --file-type --color=auto'

# Safety aliases
alias rm='rm --one-file-system -I'
alias mv='mv -i'
alias cp='cp -i'
alias feh='feh --auto-zoom --fullscreen'
alias aria2c16='aria2c -j 16 -x 16 -s 16 -k 4M'
alias clip='xclip -i -selection clipboard'

export PATH=$PATH:~/bin:~/.local/bin
export EDITOR="micro"

GLOBIGNORE=".:.."