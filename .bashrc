#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lconf='git --git-dir=$HOME/.config/linuxconfig/ --work-tree=$HOME'
PS1='[\u@\h \W]\$ '

