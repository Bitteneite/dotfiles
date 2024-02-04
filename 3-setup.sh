#!/bin/sh

# Confirmation
gum confirm "Do you wish to setup Oh-my-Zsh?" && echo || exit 1

#Plugins
# Install Oh-My-Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



zsh-autosuggestions(){
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}
gum spin --spinner points --title "Installing zsh-autosuggestions... " -- zsh-autosuggestions


zsh-syntax-highlighting(){
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}
gum spin --spinner points --title "Installing zsh-syntax-highlighting... " -- zsh-syntax-highlighting

# zsh-you-should-use
zsh-you-should-use(){
	git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
}
gum spin --spinner points --title "Installing zsh-you-should-use... " -- zsh-you-should-use

Powerlevel10k(){
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
gum spin --spinner points --title "Installing Powerlevel10k... " -- Powerlevel10k


# Deleting old .zshrc
zshrc(){
	stow --adopt zsh
	git restore .
}
gum confirm zshrc || echo "Personal configuration not installed."
