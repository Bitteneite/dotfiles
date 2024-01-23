#!/bin/bash

echo 
echo "Installing packages from applist.txt file..."
sleep 1

xargs sudo apt install -y < applist.txt

echo 
echo "Installing fonts..."
sleep 1

stow fonts

echo 
echo "Changing default shell to Zsh..."
sleep 1
chsh -s $(which zsh)

echo
echo "NOTE:"
echo "- Change your terminal's font to MesloLGS, size 14-16."
echo "- Please log off to refresh the default shell!"
sleep 2