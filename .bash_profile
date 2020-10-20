# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
xset -dpms # Disables Energy Star features
xset s off # Disables screen saver

#if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then
#  MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
#fi

#[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx --vt1

