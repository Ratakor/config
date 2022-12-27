#!/bin/zsh

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="ungoogled-chromium"

# wifi on Artix
#connmanctl disable wifi
#sleep 1
#connmanctl enable wifi
#sleep 1

# Start graphical server on user's current tty if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
#startx
