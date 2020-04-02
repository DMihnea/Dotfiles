#!/bin/bash

DIR="/home/mihnead/Pictures/Wallpapers"
PIC=$(ls $DIR/* | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
wal -i $PIC
