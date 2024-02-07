read -p "Start charging below: " b;
read -p "Stop charging above: " a;
echo $b | sudo tee /sys/class/power_supply/BAT0/charge_start_threshold;
echo $a | sudo tee /sys/class/power_supply/BAT0/charge_stop_threshold;
echo $b > $HOME/.config/lenovo_battery/start;
echo $a > $HOME/.config/lenovo_battery/stop;
