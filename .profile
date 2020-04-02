# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


PATH=$PATH:~/.local/bin


# Mapping Caps to ESC and CTRL 
setxkbmap -option ctrl:nocaps 
xcape -e 'Control_L=Escape' 

# Mapping CTRL_R to HYPER
xmodmap -e "remove Mod4 = Hyper_L" 
xmodmap -e "add Mod3 = Hyper_L"
xmodmap -e "keysym Control_R = Hyper_L"
xmodmap -e "remove Control = Hyper_L"

# Timezone:
TZ='Europe/Bucharest'; export TZ 

# Make terminal act like Vim:
#set -o vi

