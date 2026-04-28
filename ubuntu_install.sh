#!/data/data/com.termux/files/usr/bin/bash
clear
echo -e "\e[1;34m##################################################\e[0m"
echo -e "\e[1;32m       WELCOME TO THEVOIDKERNEL UBUNTU SETUP      \e[0m"
echo -e "\e[1;34m##################################################\e[0m"

echo "Updating system and installing dependencies..."
# The following flags prevent the 'conffile' prompt error you received
export DEBIAN_FRONTEND=noninteractive
pkg update -y
pkg upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"
pkg install termux-x11-nightly -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"

echo "Starting Udroid Installer..."
. <(curl -Ls https://bit.ly/udroid-installer)
udroid install jammy:xfce4

echo -e "\e[1;32mInstallation Complete by @thevoidkernel\e[0m"
