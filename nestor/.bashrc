#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.dotfiles/common/.bashrc.common # for common stuff
source ~/.dotfiles/nestor/.bashrc.private # for private stuff

# PS1='\[\e[34m\]\u\[\e[0m\]@\h \[\e[32m\]\W\[\e[0m\]\$ '
PS1='\[\e[32m\]\u\[\e[0m\]@\e[36m\]\h\e[0m\] \[\e[32m\]\W\[\e[0m\]\$ '

