#!/bin/sh

#Prompt
gum style \
	--border double \
	--align center --width 40 --margin "1 2" --padding "1 4" \
	'Bittens Incorporated' '' 'Installation Script' 'PART 2'


#Installing packages
# Choose
cat applist.txt | gum choose --no-limit --header="Select Packages to install..." > temp.txt
# Install
if [ -s "temp.txt" ]; then
	sudo -v # Check sudo password
	gum spin --spinner points --title "Installing selected packages..." -- xargs sudo apt install -y < temp.txt
	rm temp.txt
fi


echo


# Installing fonts
gum confirm "Do you wish to install MesloLGS NF?" && stow fonts && echo "MesloLGS NF successfully installed into ~/.fonts" && echo "Please change your terminal's font to MesloLGS, size 14-16." || echo



echo



#Notes
gum style \
	--border double \
	--align center --width 40 --margin "1 2" --padding "1 4" \
	'Bittens Incorporated' '' 'Installation Script' 'PART 2'
