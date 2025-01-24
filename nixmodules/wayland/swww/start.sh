wallpaper=~/media/pictures/wallpapers/bt.jpg

swww-daemon &
swww img $wallpaper &
wal -i $wallpaper && pywalfox update
waybar &
