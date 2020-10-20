#!/bin/sh

#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmapi
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
#export PATH="$PATH:$HOME/.local/bin"
#export EDITOR="geany"
#export FILES="pcmanfm"
#export TERMINAL="urxvt"
export BROWSER="chromium"
xset -dpms # Disables Energy Star features
xset s off # Disables screen saver
#export LANG=en_US.UTF-8


#sh ~/.scripts/xsetloop.sh &
#sh ~/.scripts/volume.sh &
#while true; do
#MEMORY=$(< /tmp/CurTime.tmp)
#DATETIME=$(date '+%b %d %R ')
#VOLUME=$( amixer sget Master | grep -e 'Front Left:' | \
#    sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/Mute/' | sed 's/on /Vol /' )
#xsetroot -name " ${VOLUME} | $DATETIME"

#done  &

#while true; do

#       free -h --kilo | awk '/^Mem:/ {print $3 "/" $2}' > /tmp/CurTime.tmp
 
#        sleep 10s
#done &
#picom &
nm-applet &
~/.fehbg &
dwmblocks &

#if [ -f "$userresources" ]; then
#    xrdb -merge "$userresources"
#fi
xrdb -merge .Xresources &
#exec bspwm
#exec gnome-session
exec dwm
#exec awesome


 
