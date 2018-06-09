xrdb ~/.Xresources
xrandr --dpi 100
xbacklight -set 1
pulseaudio --start
xhost +

amixer set Master 0%
amixer set Master unmute
amixer set Headphone 100%
amixer set Headphone unmute
amixer set Speaker 100%
amixer set Speaker unmute
amixer set Speaker+LO 100%
amixer set Speaker+LO unmute
amixer set PCM 100%
amixer set PCM unmute

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
