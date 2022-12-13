#!/bin/sh

setxkbmap fr us
xrandr --dpi 96

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
while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift -r -l 48.87:2.35 &

xbanish &

exec dwm

## compositor
#killall picom
#while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
#picom --experimental-backends --blur-background-fixed --blur-method "gaussian" --blur-size 10 --blur-deviation 5 --corner-radius 8 --round-borders 8 --backend glx --vsync &
