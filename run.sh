export DISPLAY=:1
set -x

Xvfb :1 -screen 0 1920x1080x24 &

sleep 3

i3 &

sleep 3

x11vnc -display :1 -nopw -forever -shared
