#!/bin/bash

# Script for installing all the configurations

install () {
	program=$2
	if [ $1 == "-apt" ]
	then
		dpkg -l | grep " $program " > /dev/null
	else 
		locate $program > /dev/null
	fi

	if [ $? -eq 0  ]
	then
		echo "$program already installed"
	else
		echo "Installing $program"
		if [ $1 == "-apt" ]
		then
			sudo apt-get install -y $program 
		elif [ $1 == "-py" ]
		then
			sudo pip3 install $program
		fi
	fi
}


# Start

sudo apt-get -y update && sudo apt-get -y upgrade

# Utilities

install -apt curl
install -apt mlocate
install -apt locate
sudo updatedb
install -apt python3-pip
install -apt wget
install -apt xcape
install -apt gdebi

# Background 

install -apt feh
install -apt imagemagick
install -py pywal
install -py blurwal


# Spotify 

locate spotify-client > /dev/null && echo "Spotify is already installed" || (
	curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
	echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list > /dev/null 
	sudo apt-get update
	install -apt spotify-client
	) 
locate mustream.sh > /dev/null && echo "mustream already installed" || (
	cd ~  
	git clone https://github.com/BelkaDev/Mustream ; 
	mv Mustream/mustream.sh ~/.local/bin 
	sudo rm -r Mustream
	)

sp > /dev/null && echo "sp already installed" || (
	cd ~ 
	git clone https://github.com/NLDev/sp  
	sudo dpkg -i sp/sp_1.0-1_all.deb  
	sudo rm -r sp
	)

# Emacs

install -apt emacs-gtk
locate spacemacs > /dev/null && echo "Spacemacs is already installed" || git clone https://github.com/syl20bnr/spacemacs ~/.spacemacs # Spacemacs
locate doom > /dev/null && echo "Doom is already installed" || ( 
	git clone https://github.com/hlissner/.emacs.d ~/.doom-emacs 
	~/.doom-emacs/bin/doom install 
	~/.doom-emacs/bin/doom refresh 
	) # Doom
locate chemacs > /dev/null && echo "chemacs is already installed" || ( 
	git clone https://github.com/plexus/chemacs.git  
	chemacs/install.sh 
	) # CHemacs

# Vim

install -apt vim-gtk
ls -al ~ | grep "\.vim$" > /dev/null && echo "Vim plugins already installed" || (
	mkdir ~/.vim ; cd ~/.vim
	mkdir view bundle ; cd bundle
	for entry in $(cat ~/.vimrc | grep git | sed -E 's/"//g')
	do
		git clone $entry
	done
	)

# LaTex

install -apt texlive-latex-extra
install -apt latexmk
install -apt xdotool
install -apt zathura
locate genzathurarc > /dev/null && echo "Zathure-Pywal already installed" || (
	cd ~/.config/zathura
       	git clone https://github.com/GideonWolfe/Zathura-Pywal 
	cd Zathura-Pywal 
	./install.sh 
	)


# Haskell

install -apt haskell-platform

# Java

install -apt default-jre
install -apt default-jdk

# Scala

install -apt scala

# Discord

locate discord > /dev/null && echo "Discord is already installed" || (
	wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
	sudo gdebi /tmp/discord.deb 
	)

# Window Manager i3

locate i3-gaps > /dev/null && echo "i3 is already installed" || (
	sudo add-apt-repository ppa:kgilmer/speed-ricer
	sudo apt-get -y update 
	install -apt i3-gaps
	install -apt i3blocks
	)
install -apt rofi

# Google Chrome

dpkg -l | grep google-chrome-stable > /dev/null && echo "Google Chrome is already installed" || (
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
	sudo apt-get -y update 
	install -apt google-chrome-stable
	)

# Stuff

install -apt pavucontrol
install -apt git 
install -apt htop
install -apt tldr
install -apt neofetch

