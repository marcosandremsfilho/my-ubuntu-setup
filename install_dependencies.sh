#!/bin/bash

apt install npm
apt install ripgrep # This dependencie is used to enable the live grep from telescope

ORIG_USER=$SUDO_USER
ORIG_HOME=$(eval echo "~$ORIG_USER")

mkdir -p $ORIG_HOME/.config/tmux/plugins/catppuccin/tmux

git clone https://github.com/catppuccin/tmux.git $ORIG_HOME/.config/tmux/plugins/catppuccin/tmux

chown -R $ORIG_USER:$ORIG_USER $ORIG_HOME/.config/tmux
