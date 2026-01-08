#!/bin/bash

icon="$HOME/.config/i3/lock.png"
img="$HOME/.cache/i3lock.png"

scrot -q 45 -o $img
# Pixelate image
#convert $img -scale 10% -scale 1000% $img
# Blur image
convert $img -blur 10x15 $img
#convert $img $icon -gravity center -composite $img
i3lock -i $img --nofork