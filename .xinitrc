#!/bin/sh

setxkbmap fr us
#xrandr --dpi 96
#xrandr --output LVDS-1 --off

# background
feh --bg-fill $HOME/Pictures/Wallpapers/aiko.jpg
#feh --bg-fill $HOME/Pictures/Wallpapers/ppwp.jpg
#xsetroot -solid "#282a36"

# audio
##killall pulseaudio
##pulseaudio -k
#pulseaudio &
#pulseaudio --start &

# bar
#killall dwmblocks
dwmblocks &
#slstatus &

tlp start &

# eyesight
#killall redshift
#while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift -r -l 48.87:2.35 &

xbanish &
xcompmgr &

exec dwm
