#!/bin/bash
#Depends on jq, and wlrctl
file="/tmp/waynav.sh"

cpos=$(hyprctl cursorpos)
ccx=${cpos%%,*}
ccy=${cpos##*, }

case $1 in
"init")

	monitorDimensions="$(hyprctl monitors -j | jq '.[] | select(.focused==true) | .width,.height')"
	mx="$(echo "$monitorDimensions" | head -n 1)"
	my="$(echo "$monitorDimensions" | tail -n 1)"

	wlrctl pointer move $(((mx / 2) - ccx)) $(((my / 2) - ccy))
	echo "cx=$((mx / 2))" >$file
	echo "cy=$((my / 2))" >>$file
	echo "cox=$ccx" >>$file
	echo "coy=$ccy" >>$file
	echo "boxx=$mx" >>$file
	echo "boxy=$my" >>$file
	;;
"click")
	wlrctl pointer click
	rm -rf $file
	exit
	;;
"left")
	source $file
	wlrctl pointer move $(((cx - (boxx / 4)) - ccx)) $((cy - ccy))
	echo "cx=$((cx - (boxx / 4)))" >$file
	echo "cy=$cy" >>$file
	echo "cox=$cox" >>$file
	echo "coy=$coy" >>$file
	echo "boxx=$((boxx / 2))" >>$file
	echo "boxy=$boxy" >>$file
	;;
"right")
	source $file
	wlrctl pointer move $(((cx + (boxx / 4)) - ccx)) $((cy - ccy))
	echo "cx=$((cx + (boxx / 4)))" >$file
	echo "cy=$cy" >>$file
	echo "cox=$cox" >>$file
	echo "coy=$coy" >>$file
	echo "boxx=$((boxx / 2))" >>$file
	echo "boxy=$boxy" >>$file
	;;
"up")
	source $file
	wlrctl pointer move $((cx - ccx)) $(((cy - (boxy / 4)) - ccy))
	echo "cy=$((cy - (boxy / 4)))" >$file
	echo "cx=$cx" >>$file
	echo "cox=$cox" >>$file
	echo "coy=$coy" >>$file
	echo "boxy=$((boxy / 2))" >>$file
	echo "boxx=$boxx" >>$file
	;;
"down")
	source $file
	wlrctl pointer move $((cx - ccx)) $(((cy + (boxy / 4)) - ccy))
	echo "cy=$((cy + (boxy / 4)))" >$file
	echo "cx=$cx" >>$file
	echo "cox=$cox" >>$file
	echo "coy=$coy" >>$file
	echo "boxy=$((boxy / 2))" >>$file
	echo "boxx=$boxx" >>$file
	;;
*)
	wlrctl pointer click "$1"
	;;
esac
