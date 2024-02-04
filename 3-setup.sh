#!/bin/sh

ohmyzsh(){
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}
gum confirm "Do you wish to setup Oh-my-Zsh?" && ohmyzsh



zshautosuggestions(){
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}
gum confirm "Do you wish to install zsh-autosuggestions?" && zshautosuggestions


zshsyntaxhighlighting(){
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}
gum confirm "Do you wish to install zsh-syntax-highlighting?" && zshsyntaxhighlighting

zshyoushoulduse(){
	git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
}
gum confirm "Do you wish to install zsh-you-should-use?" && zshyoushoulduse

Powerlevel10k(){
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
gum confirm "Do you wish to install Powerlevel10k?" && Powerlevel10k


# Deleting old .zshrc
zshrcinstall(){
	stow --adopt zsh
	git restore .
}
gum confirm "Do you wish to install zshrc?" && zshrcinstall || echo "Personal configuration not installed."
