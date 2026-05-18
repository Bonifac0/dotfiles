#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.dotfiles/common/.bashrc.common # for common stuff
source ~/.dotfiles/arch_notebook/.bashrc.private # for private stuff

alias NetLogo='~/Programs/NetLogo-7.0.0/netlogo-gui.sh'

# change color of line header (michal@arch path)
PS1='\[\e[34m\]\u\[\e[0m\]@\h \[\e[32m\]\W\[\e[0m\]\$ '


if [ -f ~/Helpers/hcommands.sh ]; then
    source ~/Helpers/hcommands.sh
fi
