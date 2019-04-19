#!/usr/bin/env zsh

BASEDIR="$(cd "$(dirname "${ZSH_SOURCE[0]}")" && pwd)"

echo "Updating submodules..."
git submodule update --init --recursive --remote

echo "Linking files..."
ln -sfn ${BASEDIR}/vim/vim $HOME/.vim
ln -sfn ${BASEDIR}/vim/vimrc $HOME/.vimrc
ln -sfn ${BASEDIR}/vim/gvimrc $HOME/.gvimrc

ln -sfn ${BASEDIR}/zsh/zsh $HOME/.zsh
ln -sfn ${BASEDIR}/zsh/zprofile $HOME/.zprofile
ln -sfn ${BASEDIR}/zsh/zshenv $HOME/.zshenv
ln -sfn ${BASEDIR}/zsh/zshrc $HOME/.zshrc

ln -sfn ${BASEDIR}/tmux/tmux.conf $HOME/.tmux.conf
ln -sfn ${BASEDIR}/git/gitconfig $HOME/.gitconfig
ln -sfn ${BASEDIR}/ag/agignore $HOME/.agignore

[ -d $HOME/.config/cmus/ ] || mkdir -p $HOME/.config/cmus
ln -sfn ${BASEDIR}/cmus/aaku.theme $HOME/.config/cmus/aaku.theme

ln -sfn ${BASEDIR}/X11/xinitrc $HOME/.xinitrc
ln -sfn ${BASEDIR}/X11/Xresources $HOME/.Xresources

ln -sfn ${BASEDIR}/i3 $HOME/.config/i3

ln -sfn ${BASEDIR}/i3blocks $HOME/.config/i3blocks

ln -sfn ${BASEDIR}/bin/fehbg $HOME/.fehbg

[ -d $HOME/.config/termite/ ] || mkdir -p $HOME/.config/termite
ln -sfn ${BASEDIR}/termite/config $HOME/.config/termite/config

[ -d $HOME/.config/rofi/ ] || mkdir -p $HOME/.config/rofi
ln -sfn ${BASEDIR}/rofi/config $HOME/.config/rofi/config

[ -d $HOME/.config/dunst/ ] || mkdir -p $HOME/.config/dunst
ln -sfn ${BASEDIR}/dunst/dunstrc $HOME/.config/dunst/dunstrc

[ -d $HOME/.config/compton/ ] || mkdir -p $HOME/.config/compton
ln -sfn ${BASEDIR}/compton/compton.conf $HOME/.config/compton/compton.conf

ln -sfn ${BASEDIR}/fontconfig $HOME/.config/fontconfig

echo "Installing Vim plugins..."
vim -E -c PlugInstall -c qall

echo "Source Zsh files"
source $HOME/.zshrc
