#!/bin/bash

apt install npm
apt install ripgrep # This dependencie is used to enable the live grep from telescope

cd ~/.config/
git clone https://github.com/catppuccin/tmux.git
cd -
