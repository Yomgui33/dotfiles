#!/bin/bash

# Install tpm
mkdir /root/.tmux
git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

# Install tmux-picker
git clone https://github.com/pawel-wiejacha/tmux-picker /root/.tmux/tmux-picker
sed -i 's/M-f/C-f/g' /root/.tmux/tmux-picker/tmux-picker.tmux

# Install fuzzback
git clone https://github.com/roosta/tmux-fuzzback ~/.tmux/tmux-fuzzback

# Autolaunch tmux
sed 's/: ${ZSH_TMUX_AUTOSTART:=false}/: ${ZSH_TMUX_AUTOSTART:=true}/g' /root/.oh-my-zsh/plugins/tmux/tmux.plugin.zsh > /root/.oh-my-zsh/plugins/tmux/temp.zsh
mv /root/.oh-my-zsh/plugins/tmux/temp.zsh /root/.oh-my-zsh/plugins/tmux/tmux.plugin.zsh

# Change zsh color
sed 's/626262/bdbdbd/g' /root/.zshrc > /root/temprc
mv /root/temprc /root/.zshrc

# Add F2 toggle :set paste in vim
echo "set pastetoggle=<F2>" > "~/.vim_runtime/my_configs.vim"
