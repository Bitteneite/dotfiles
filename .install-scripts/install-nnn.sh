#!/bin/sh

install() {
  cd ~/GitHub/
  git clone https://github.com/jarun/nnn.git
  cd nnn
  sudo apt install build-essential pkg-config libncursesw5-dev libreadline-dev -y
  sudo make O_NERD=1 strip install
}

#Prompt
gum confirm "Do you wish to install NNN?" && install || echo
