#!/bin/bash
xargs sudo apt install -y < applist.txt

stow fonts
chsh -s $(which zsh)

echo "Change your terminal's font to MesloLGS, size 14-16."
echo "Please log off to refresh the default shell!"