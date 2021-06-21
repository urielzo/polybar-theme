#!/usr/bin/env bash

DIR="$HOME/.config/polybar/panels/menu"

launcher() {
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme "$DIR"/"$theme"/launcher.rasi
}

if  [[ "$1" = "--gotham" ]]; then
	theme="gotham"
	launcher
	
elif  [[ "$1" = "--pro-dark" ]]; then
	theme="pro-dark"
	launcher
	
elif  [[ "$1" = "--pro-light" ]]; then
	theme="pro-light"
	launcher
	
elif  [[ "$1" = "--pro-medium-light" ]]; then
	theme="pro-medium-light"
	launcher
	
elif  [[ "$1" = "--pro-medium-dark" ]]; then
	theme="pro-medium-dark"
	launcher
	
elif  [[ "$1" = "--pro-blue-gray" ]]; then
	theme="pro-blue-gray"
	launcher

else
	rofi -e "No theme specified."
	exit 1
fi
