#!/bin/sh
setxkbmap latam
xwallpaper --zoom ~/Downloads/wp/yuki.png
pipewire &
wireplumber &
pipewire-pulse &

/usr/libexec/polkit-mate-authentication-agent-1 &

exec dbus-launch --exit-with-session oxwm
