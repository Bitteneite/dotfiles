#!/bin/bash

# Confirmation
read -p "Do you wish to setup Zsh? (enter/n): " answer
if [ "$answer" = "n" ]; then
    echo "Aborting setup..."
    exit 1
fi
echo

#Plugins
# Install Oh-My-Zsh
echo 
echo "Installing Oh-My-Zsh..."
sleep 2
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
echo 
echo "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
echo 
echo "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-you-should-use
echo 
echo "Installing zsh-you-should-use..."
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use


# Powerlevel10k
echo 
echo "Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Deleting old .zshrc
echo 
echo "Installing personal .zshrc file..."
stow --adopt zsh
git restore .

echo
echo "Open the terminal again to configure Powerlevel10k!"