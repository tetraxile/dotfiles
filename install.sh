#!/bin/sh

ln -sf $(readlink -f gpg-agent.conf) ~/.gnupg/gpg-agent.conf
ln -sf $(readlink -f gitconfig) ~/.gitconfig
ln -sf $(readlink -f zshrc) ~/.zshrc
ln -sf $(readlink -f zshenv) ~/.zshenv
ln -sf $(readlink -f xinitrc) ~/.xinitrc
ln -sf $(readlink -f xserverrc) ~/.xserverrc
ln -sf $(readlink -f i3) ~/.config/
ln -sf $(readlink -f i3blocks) ~/.config/
ln -sf $(readlink -f nvim) ~/.config/
ln -sf $(readlink -f gdbinit) ~/.gdbinit
ln -sf $(readlink -f Xresources) ~/.Xresources

mkdir -p ~/.config/fontconfig/conf.d
ln -sf $(readlink -f fontconfig/fonts.conf) ~/.config/fontconfig/
ln -sf /usr/share/fontconfig/conf.avail/50-user.conf ~/.config/fontconfig/conf.d/


