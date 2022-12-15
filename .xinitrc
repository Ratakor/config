#!/bin/sh

setxkbmap fr us
xrandr --dpi 96
#xrandr --output eDP-1 --scale 1x1


# background
#feh --bg-fill $HOME/Pictures/Wallpapers/oopsie.png
#--bh-scale
xsetroot -solid "#282a36"

# audio
#killall pulseaudio
#pulseaudio -k
pulseaudio &
pulseaudio --start &

# bar
killall dwmblocks
dwmblocks &
#slstatus &

# eyesight
killall redshift
#while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift -r -l 48.87:2.35 &

xbanish &

exec dwm
