# fun stuff
# source ~/.zshrc

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%n %~ $%b "
#setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# sudo not required for some system commands
for command in mount umount sv pacman updatedb shutdown poweroff reboot ; do
	alias $command="sudo $command"
done; unset command

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias sudo='doas'
alias v='nvim'
alias python='python3'
alias :q='exit'
alias :Q='exit'
alias rm='rm -vI'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
#alias ls='lsd'
alias ls='exa'
alias sl='ls'
alias la='ls -a'
alias ll='ls -lah'
alias tree='ls --tree'
alias ..='cd ..'
alias cs='cd'
#alias xdg-open="Firefox --new-tab"
alias TP='cd ~/Epita/S1/TP_C#/epita-prepa-acdc-prog-101-p-04-2027-thomas.cremel/Metamorphoses'
alias PT='cd ~/Epita/S1/TP_C#/epita-prepa-acdc-prog-101-p-04-2027-thomas.cremel/Metamorphoses'
alias AFIT='cd ~/Epita/S1/AFIT/thomas.cremel/Source'
#alias S2='cd ~/Epita/...projets2'
alias p='pacman'
alias battery='acpi'
