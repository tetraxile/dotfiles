#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

for id in $(xinput list --id-only "Logitech G502 HERO Gaming Mouse"); do
	xinput set-prop $id "libinput Accel Speed" -0.5
done

fcitx5 &
dunst &
exec i3
