#!/bin/sh

setxkbmap fr us
xrandr --dpi 96
#feh --bg-fill $HOME/Pictures/Wallpapers/...
#xsetroot -name ""

exec dwm
