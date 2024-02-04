#!/bin/sh

install() {
  cd ~/GitHub/
  git clone https://github.com/jarun/nnn.git
  cd nnn
}

#Prompt
gum confirm "Do you wish to install NNN?" && install() || echo




