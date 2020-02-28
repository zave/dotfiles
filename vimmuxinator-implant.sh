#!/usr/bin/env bash

# Let's do this from the home directory
cd

# Purge the default version of vim, along with the configuration files, if they're installed.
sudo apt-get purge vim -y

# Install vim, tmux
sudo apt-get install vim curl tmux -y

# Remove config files for vim and tmux, if they're there
rm -f ~/.tmux.conf ~/.vimrc
mkdir ~/.bin
mkdir -p ~/.tmux/tmuxinator

# Copy .vimrc and .tmux.conf from zave's github 
curl https://raw.githubusercontent.com/zave/dotfiles/master/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/zave/dotfiles/master/.tmux.conf > ~/.tmux.conf
curl https://raw.githubusercontent.com/zave/dotfiles/master/tmuxinator.bash > ~/.bin/tmuxinator.bash
curl https://raw.githubusercontent.com/zave/dotfiles/master/.tmux/tmuxinator/rails.yml > ~/.tmux/tmuxinator/rails.yml

# Set vim as editor
export EDITOR=vim
