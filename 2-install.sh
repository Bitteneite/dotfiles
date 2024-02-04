#!/bin/sh

#Prompt
gum style \
	--border double \
	--align center --width 40 --margin "1 2" --padding "1 4" \
	'Bittens Incorporated' '' 'Installation Script' 'PART 2'


#Installing packages
choose_packages() {
	cat applist.txt | gum choose --no-limit --header="Select Packages to install..." > temp.txt
}
install_packages() {
	sudo -v # Check sudo password
	xargs sudo apt install -y < temp.txt
	rm temp.txt
}
#Prompt
choose_packages
if [ -s "temp.txt" ]; then
	install()
fi


# Installing fonts
install_font() {
	stow fonts
	echo "MesloLGS NF successfully installed into ~/.fonts"
	echo "Please change your terminal's font to MesloLGS, size 14-16."
}
#Prompt
gum confirm "Do you wish to install MesloLGS NF?" && install_font || echo



