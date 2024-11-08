#!/bin/bash

echo "Link tmux.conf"
sudo ln -s -f ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

echo "Link tmux.conf.local"
sudo ln -s -f ~/dotfiles/tmux/tmux.conf.local ~/.tmux.conf.local

echo "Link condarc"
sudo ln -s -f ~/dotfiles/conda/condarc ~/.condarc

echo "Link zshrc"
sudo ln -s -f ~/dotfiles/zsh/zshrc ~/.zshrc

# Append aliases to .bashrc
echo '# Tmux' >> ~/.zshrc
echo 'alias tns="tmux new -s"' >> ~/.zshrc
echo 'alias tl="tmux ls"' >> ~/.zshrc
echo 'alias ta="tmux attach -t"' >> ~/.zshrc
echo 'alias tk="tmux kill-session -t"' >> ~/.zshrc
echo '# Tmux' >> ~/.bashrc

# Notify the user to reload .bashrc
#echo "Aliases added to .bashrc. Please run 'source ~/.bashrc' to apply changes."
