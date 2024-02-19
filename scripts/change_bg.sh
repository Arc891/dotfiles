#!/bin/bash
bg=$(find ~/Pictures/FavoriteNordics | shuf -n 1)

swww query || swww init

swww img $bg --transition-fps 60 --transition-type wipe --transition-duration 2

#ln -sf $bg /usr/share/sddm/themes/sdt/wallpaper.jpg

