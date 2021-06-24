#!/usr/bin/env bash

DIR="$HOME/.config/polybar/panels"

change_panel() {
	# replace config with selected panel
	cat "$DIR"/panel/"${panel}.ini" > "$DIR"/config.ini

	# Change wallpaper
	feh --bg-fill "$DIR"/wallpapers/"$bg"
	
	# Restarting polybar
	polybar-msg cmd restart
}

if  [[ "$1" = "--pro_dark" ]]; then
	panel="pro_dark"
	bg="pro-dark.png"
	change_panel
	
elif  [[ "$1" = "--pro_gotham" ]]; then
	panel="pro_gotham"
	bg="pro-gotham.png"
	change_panel
	
elif  [[ "$1" = "--pro_medium_dark" ]]; then
	panel="pro_medium_dark"
	bg="pro-medium-dark.png"
	change_panel
	
elif  [[ "$1" = "--pro_light" ]]; then
	panel="pro_light"
	bg="pro-light.png"
	change_panel
	
elif  [[ "$1" = "--pro_medium_light" ]]; then
	panel="pro_medium_light"
	bg="pro-medium-light.png"
	change_panel						

elif  [[ "$1" = "--pro_blue_gray" ]]; then
	panel="pro_blue_gray"
	bg="cat.jpg"
	change_panel
	
else
	cat <<- _EOF_
	No option specified, Available options:
	--pro_dark --pro_gotham --pro_medium_dark --pro_light --pro_medium_light --pro_blue_gray
	_EOF_
fi
