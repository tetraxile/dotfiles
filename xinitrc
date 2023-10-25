#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# preferences
xrdb -merge $HOME/.Xresources
xset r rate 200 30
setxkbmap -layout us,is -option grp:shift_caps_toggle

# notification daemon
{ sleep 2; runst; } &

# window manager
exec i3
