
declare -a options=("thinkorswim
tastytrade
quit")

choice=$(echo -e "${options[@]}" | dmenu -l -i -p 'System monitors: ')

case $choice in
	quit)
		echo "Program terminated." && exit 1
	;;
	tastyworks)
        exec /opt/tastyworks/tastyworks
	;;
	tastytrade)
        exec chromium tastytrade.com
	;;
	thinkorswim)
	    exec chromium trade.thinkorswim.com
#        exec "$HOME/thinkorswim/thinkorswim"
	;;
	*)
		exit 1
	;;
esac

