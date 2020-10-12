
declare options=("dwm
DWM-help
sxhkdrc
bspwmrc
keybingings
neovim
vim
zsh
bash
st
xresources
awesome
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	sxhkdrc)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	bspwmrc)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	keybingings)
		choice="$HOME/.config/sxhkd/keybindings.sh"
	;;
	dwm)
		choice="$HOME/dwm/config.def.h"	
	;;
	DWM-help)
		choice="$HOME/dwm/dwm.help"	
	;;
	neovim)
		choice="$HOME/.config/nvim/init.vim"
	;;
	st)
		choice="$HOME/st/config.h"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
st -e nvim "$choice"
