
declare options=("dwm
keybingings
sxhkdrc
bspwmrc
bspkey
xinitrc
alias
nvim
st
zprofile
xresources
zsh
bash
awesome
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
		keybingings)
		choice="$HOME/.config/dwm/keybindings"	
	;;
	sxhkdrc)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	bspwmrc)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
		bspkey)
		choice="$HOME/.config/sxhkd/bspkey"	
	;;
	xinitrc)
		choice="$HOME/.config/xinitrc"
	;;
	alias)
		choice="$HOME/.config/aliasrc"
	;;
	dwm)
		choice="$HOME/.config/dwm/config.def.h"	
	;;
	nvim)
		choice="$HOME/.config/nvim/init.vim"
	;;
	st)
		choice="$HOME/.config/st/config.h"
	;;
	zprofile)
		choice="$HOME/.zprofile"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.config/zsh/.zshrc"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	*)
		exit 1
	;;
esac
st -e nvim "$choice"
