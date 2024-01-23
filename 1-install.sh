#!/bin/bash


# Installing packages
read -p "Do you wish to install packages from applist.txt? (enter/n): " answer

if [ "$answer" != "n" ]; then
    echo "Installing packages from applist.txt file..."
    xargs sudo apt install -y < applist.txt
	echo "Success!"
fi
echo


# Installing fonts
read -p "Do you wish to install fonts? (enter/n): " answer

if [ "$answer" != "n" ]; then
	echo "Installing fonts..."
	stow fonts
	echo "Success!"
fi
echo

# EXTRAS
echo "NOTE:"
echo "- Change your terminal's font to MesloLGS, size 14-16."