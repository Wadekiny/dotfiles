#killall -q polybar
#while pgrep -x >/dev/null; do sleep 1; done
pkill polybar
sleep 1
polybar bar_laptop &
polybar bar_dp0 &
polybar bar_hdmi &

#polybar -c ~/.config/polybar/config_dp0.ini
#sleep 1
#polybar -c ~/.config/polybar/config_dp2.ini
#sleep 1
#polybar -c ~/.config/polybar/config_hdmi0.ini
