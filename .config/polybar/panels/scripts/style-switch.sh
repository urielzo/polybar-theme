#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/panels/scripts"
DIR="$HOME/.config/polybar/panels/menu"

if  [[ "$1" = "--gotham" ]]; then
	theme="gotham"
	
elif  [[ "$1" = "--pro-dark" ]]; then
	theme="pro-dark"
	
elif  [[ "$1" = "--pro-medium-dark" ]]; then
	theme="pro-medium-dark"	

elif  [[ "$1" = "--pro-light" ]]; then
	theme="pro-light"
	
elif  [[ "$1" = "--pro-medium-light" ]]; then
	theme="pro-medium-light"				

elif  [[ "$1" = "--pro-blue-gray" ]]; then
	theme="pro-blue-gray"
	
else
	rofi -e "No theme specified."
	exit 1
fi

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $DIR/$theme/styles.rasi \
<<< " pro_dark| pro_gotham| pro_medium_dark| pro_light| pro_medium_light| pro_blue_gray|")"
            case "$MENU" in
				*pro_dark) "$SDIR"/styles.sh --pro_dark ;;
				*pro_gotham) "$SDIR"/styles.sh --pro_gotham ;;
				*pro_medium_dark) "$SDIR"/styles.sh --pro_medium_dark ;;
				*pro_light) "$SDIR"/styles.sh --pro_light ;;
				*pro_medium_light) "$SDIR"/styles.sh --pro_medium_light ;;
				*pro_blue_gray) "$SDIR"/styles.sh --pro_blue_gray ;;
            esac
            esac
