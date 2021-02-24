exec --no-startup-id picom
exec --no-startup-id "hsetroot -solid #161821"
bindsym $mod+Shift+w exec "feh --bg-scale ~/.cache/wallpaper"
bindsym $mod+Shift+s exec "hsetroot -solid #161821"
bindsym $mod+Shift+r exec "$HOME/.config/mkconfig.sh && i3-msg restart"
