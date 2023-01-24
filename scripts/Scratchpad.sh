ll_args=("$@")
arg1=$1
arg2=$2
arg3="${all_args[@]:2}"
case $arg1 in
	"title")
		id=$(xdo id -n $arg2)
		;;
	"class")
		id=$(xdo id -N $arg2)
		;;
	*)
		echo "Wrong options"
		;;
esac

esac

echo $id
echo $arg3

if [ "$id" == "" ]
then
	exec $arg3;
else
	if [ "$(printf '%s' "$GDMSESSION" | grep bspwm | wc -l)" == "1" ]
	then
		bspc node $(printf $id) -g hidden -d focused -f
	else
		state=$(xprop -id "$id" WM_STATE | grep 'window state' | awk '{print $3}')
		if [ "$state" == "Withdrawn" ]
		then
			xdo show $id
		else 
			xdo hide $id
		fi
	fi
fi
