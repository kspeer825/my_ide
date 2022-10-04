#!/bin/bash

sudo apt upgrade

# Install an editor
sudo apt install emacs
# Configure editor
ln -s ~/.emacs.d/init.el /opt/code/my_ide/configs/init.el

# Install a multiplexer
! command -v tmux &> /dev/null && sudo apt install tmux
# Configure multiplexer
ln -s ~/.tmux.conf /opt/code/my_ide/configs/.tmux.conf
