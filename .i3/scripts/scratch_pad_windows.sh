#!/bin/bash

sleep 5

i3-msg exec gnome-calculator
i3-msg exec /usr/bin/spotify
i3-msg exec 'terminator -T ranger -x ranger ~'
i3-msg exec 'gnome-system-monitor'
