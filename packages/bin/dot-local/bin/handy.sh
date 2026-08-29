#!/usr/bin/bash

goto () {
    selected=$(find ~ -mindepth 1 -maxdepth 1 -type d | fzf)

    if [[ -z $selected ]]; then
        exit 1
    fi

    cd $selected
}

bt () {
	action=$(echo "$1" | tr '[:upper:]' '[:lower:]')
	device_mac=$(echo "${!#}" | grep -oP '(?<=\()[^)]+(?=\))')

	if [ "$action" = 'disconnect' ]; then
	    echo -e "$action" | bluetoothctl > /dev/null
	else
	    echo -e "$action $device_mac" | bluetoothctl > /dev/null
	fi
}

brt () {
}

main () {
}

main

