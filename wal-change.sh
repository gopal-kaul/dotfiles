rm ~/.cache/wal/ -fr
wal -i ~/Pictures/wall.png
ln -sf ~/.cache/wal/colors.Xresources ~/.Xresources
xrdb -merge ~/.Xresources
xrdb ~/.Xresources
cp ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
pkill dunst
i3-msg restart
