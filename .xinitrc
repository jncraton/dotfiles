xrdb ~/.Xresources
xrandr --dpi 100
xbacklight -set 1
pulseaudio --start
xhost +

# Set Capslock to compose key
setxkbmap -option compose:caps

# Touchpad settings
synclient VertEdgeScroll=0
synclient HorizEdgeScroll=0
synclient VertTwoFingerScroll=0
synclient HorizTwoFingerScroll=0
synclient MaxTapTime=0
synclient CoastingSpeed=0
killall syndaemon
syndaemon -d -t

exec openbox-session
