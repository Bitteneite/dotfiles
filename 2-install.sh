#!/bin/sh

#Installing packages
# Choose
cat applist.txt | gum choose --no-limit > temp.txt
# Install
if [ ! -s "temp.txt" ]; then
    echo "Installing packages from applist.txt file..."
    xargs sudo apt install -y < temp.txt
	rm temp.txt
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