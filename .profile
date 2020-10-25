#!/bin/sh

export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
#export PATH="$PATH:$HOME/.local/bin"
xset -dpms # Disables Energy Star features
xset s off # Disables screen saver
xrdb -merge .Xresources &

#export PATH="$PATH:$HOME/.local/bin"
#picom &
nm-applet &
~/.fehbg &
dwmblocks &
