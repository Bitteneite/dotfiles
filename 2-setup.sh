#!/bin/bash

#Plugins
# Install Oh-My-Zsh
echo 
echo "Installing Oh-My-Zsh..."
sleep 1
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
echo 
echo "Installing zsh-autosuggestions..."
sleep 1
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
echo 
echo "Installing zsh-syntax-highlighting..."
sleep 1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Powerlevel10k
echo 
echo "Installing Powerlevel10k..."
sleep 1
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Deleting old .zshrc
echo 
echo "Installing personal .zshrc file..."
sleep 1
stow --adopt zsh

echo
echo "Open the terminal again to configure Powerlevel10k!"