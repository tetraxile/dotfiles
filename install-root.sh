#!/bin/sh

rm -r /etc/X11/xorg.conf.d
ln -sf $(readlink -f xorg.conf.d) /etc/X11/
ln -sf $(readlink -f etc-hosts) /etc/hosts
ln -sf $(readlink -f vconsole.conf) /etc/vconsole.conf
