#cursors and themes
xrdb .Xresources
xrdb -merge ~/.Xresources &
#pipewire
killall pipewire pipewire-media-session pipewire-pulse gentoo-pipewire-launcher &
pipewire &
pipewire-media-session &
pipewire-pulse &
gentoo-pipewire-launcher &
#picom 
picom --config ~/.config/picom/picom.conf &
#polybar
#exec_always polybar -r i3bar &
#exec_always polybar -r i3bar2 &
#status bar
slstatus &
#xrandr
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-1 --off --output HDMI-1-0 --mode 1920x1080 --pos 0x0 --rotate normal &
#wallpaper
exec feh --bg-scale ~/.config/wp4.png &
#dwm i3 or bspwm
exec dbus-launch --exit-with-session dwm
#exec bspwm
#exec i3
