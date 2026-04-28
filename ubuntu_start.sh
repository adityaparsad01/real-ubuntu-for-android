#!/data/data/com.termux/files/usr/bin/bash
clear
echo -e "\e[1;35m[thevoidkernel]\e[0m Starting X11 Server..."

# Start Termux-X11 in the background
termux-x11 :1 -ac & 

# Wait a moment for the X11 server to initialize
sleep 2

echo -e "\e[1;35m[thevoidkernel]\e[0m Launching Ubuntu XFCE4..."

# Login and execute the desktop environment inside the container
udroid login jammy:xfce4 -- "export DISPLAY=:1 && startxfce4"
