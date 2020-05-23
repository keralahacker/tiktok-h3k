clear
./Logo.sh
echo""
echo -e '\e[33m installing php'
sleep 3
pkg i php -y
clera
echo""
echo -e '\e[33m installing wget'
sleep 3
pkg i wget -y
clear
echo""
echo -e '\e[33m installing curl'
sleep 3
pkg i curl -y
clear
echo""
echo -e '\e[33m installing zip'
sleep 3
pkg i zip -y 
clear
echo""
echo -e '\e[33m  Downloading  Ngrok-Stable-Linux-arm'
echo -e '\e[32m'
sleep 3
./Logo.sh
echo -e '\e[96m'
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
chmod +x *

unzip ngrok-stable-linux-arm.zip

rm -rf ngrok-stable-linux-arm.zip

cp ngrok sites/tiktok/

clear 
ls

