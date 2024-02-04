#!/bin/sh

# Confirmation
gum confirm "Do you wish to setup Zsh?" && echo "lmao" || exit 1

#Plugins
# Install Oh-My-Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# zsh-autosuggestions
gum spin --spinner points --show-output --title "Installing zsh-autosuggestions..." -- git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
gum spin --spinner points --show-output --title "Installing zsh-syntax-highlighting..." -- git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-you-should-use
gum spin --spinner points --show-output --title "Installing zsh-you-should-use..." -- git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use

# Powerlevel10k
gum spin --spinner points --show-output --title "Installing Powerlevel10k..." -- git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Deleting old .zshrc
gum confirm "Install personal .zshrc configuration?" && stow --adopt zsh zsh-powerline &&
git restore . || echo "Personal configuration not installed."
