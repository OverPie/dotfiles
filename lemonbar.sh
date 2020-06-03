#!/bin/bash

BG_USE="#4f4f4f"
BG="#2e2e2e"

Song() {
    if [ "$(mocp -Q %state)" != "STOP" ]; then
        echo -e -n $(basename "$(mocp -Q %file)" | sed "s/.mp3//")
    else
        echo -e -n ""
    fi
}

Clock() {
	echo -e -n $(date "+%H:%M:%S")
}

Battery() {
	echo -e -n $(acpi --battery | cut -d, -f2)
}

Layout() {
	L=$(xset -q | grep LED | awk '{ print $10 }')
	if [ $L = "00000000" ]; then
		echo "ENG"
	else
		echo "RUS"
	fi
}

Volume() {
	if [[ ! -z $(amixer sget Master | grep "\[on\]") ]]; then
		echo -e -n $(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master) | sed 's/%//g')
	else
		echo -e -n "M"
	fi
}

Workspaces() {
	Spaces=(1 2 3 4 5 6 7 8 9 10)
	for i in ${Spaces[@]}; do
		if [ $(bspc query -D -d focused --names) = $i ]; then
			echo -e -n "|%{B$BG_USE} $i %{B$BG}"
		else
			echo -e -n "| $i "
		fi
	done

	echo -e -n "|"
}

while true; do
    echo -e "%{l}  $(Workspaces)%{B$BG}%{c}$(Song)%{r}%{+u}TIME: $(Clock)   BAT: $(Battery)   VOL: $(Volume)   LANG: $(Layout)  "
	sleep 0.1s
done
