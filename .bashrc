# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
# source ~/.bashrc

# Aliases

alias sudo='doas'
alias v='nvim'
alias :q='exit'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias ls='lsd --color=auto'
alias la='ls -a'
alias ll='ls -lah'
alias ..='cd ..'
alias xdg-open="Firefox --new-tab"
alias off='doas poweroff'
alias TP='cd ~/Epita/epita-prepa-acdc-prog-101-p-03-2027-thomas.cremel/Survivor'
alias PT='cd ~/Epita/epita-prepa-acdc-prog-101-p-03-2027-thomas.cremel/Survivor'
#alias S2='cd ~/Epita/...projets2'
alias AFIT='cd ~/Epita/thomas.cremel/Source'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PATH=$PATH:$HOME/.dotnet
export DOTNET_ROOT=$HOME/.dotnet
