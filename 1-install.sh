#!/bin/bash


# Installing packages
read -p "Do you wish to install packages from applist.txt? (y/n): " answer

if [ "$answer" = "y" ]; then
    echo "Installing packages from applist.txt file..."
    xargs sudo apt install -y < applist.txt
	echo "Success!"
fi
echo


# Installing fonts
read -p "Do you wish to install fonts? (y/n): " answer

if [ "$answer" = "y" ]; then
	echo "Installing fonts..."
	stow fonts
	echo "Success!"
fi
echo


# Change default shell
read -p "Do you wish to change the default shell to Zsh? (y/n): " answer

if [ "$answer" = "y" ]; then
	echo "Changing default shell to Zsh..."
	chsh -s $(which zsh)
	echo "Success!"
fi
echo

# EXTRAS
echo "NOTE:"
echo "- Change your terminal's font to MesloLGS, size 14-16."
echo "- Please log off to refresh the default shell!"