#!/bin/bash
# autor: msOliver
# Colaborador: ishock
# Colors
# Reset
reset="\033[0m"       	  # Text Reset
# Bold
BBlack="\033[1;30m"       # Black
BRed="\033[1;31m"         # Red
BGreen="\033[1;32m"       # Green
BYellow="\033[1;33m"      # Yellow
BBlue="\033[1;34m"        # Blue
BPurple="\033[1;35m"      # Purple
BCyan="\033[1;36m"        # Cyan
BWhite="\033[1;37m"       # White
# Regular Colors
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

menu (){
echo "
\n	
${BWhite}[++++++++++++++++++++++++++++++++++++++++++++++++++++++++++]
[++] ELAIS - Essential Linux Apps Installer Script	[++]
[++]${reset} 	${BBlue}Essential Linux Apps Installer Script${reset}		${BWhite}[++]
[++] 	Created by: ${Red}Moisés Oliver${reset} (${Yellow}msOliver${reset}) 		${BWhite}[++]
[++] 	Colaborador: ${Green}Leandro Neni${reset} (${Yellow}ishock${reset}) 		${BWhite}[++]
[++] 		Version:${reset} ${Red}1.0${reset} 				${BWhite}[++]
[++]	 Follow me on Twitter:${reset} ${Purple}@msOliver_s${reset} 		${BWhite}[++]
[++] 	Channel:${reset} ${Blue}https://goo.gl/dnglar${reset}		 	${BWhite}[++]
[++] Homepage:${reset} ${Blue}http://mstutoriall.blogspot.com.br/${reset}	[++]
[++++++++++++++++++++++++++++++++++++++++++++++++++++++++++] 
"
}

enter () {
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}


cmd="apt-get install"
all="audacity etherape gnome-mplayer gpaint gufw kdenlive libreoffice mingw32 mitmf openshot transmission"

prog1="audacity"
prog2="etherape"
prog3="gnome-mplayer"
prog4="gpaint"
prog5="gufw"
prog6="kdenlive"
prog7="libreoffice"
prog8="mingw32"
prog9="mitmf"
prog10="openshot"
prog11="transmission"

item=
until [ "$item" = "0" ]; do
    menu
    echo "MENU OF INSTALLATION\n"
    echo "1  - Audacity"
    echo "2  - Etherape"
    echo "3  - Gnome-mplayer"
    echo "4  - Gpaint"
    echo "5  - Gufw"
    echo "6  - Kdenlive"
    echo "7  - Libreoffice"
    echo "8  - Mingw32"
    echo "9  - Mitmf"
    echo "10 - Openshot"
    echo "11 - Transmission"
    echo "00 - All"
    echo ""
    echo "0 - exit program"
    echo ""
    echo -n "Enter Selection: "
    read item
    echo ""
    case $item in
        1 ) $cmd $prog1 -y ; enter ;;
        2 ) $cmd $prog2 -y ; enter ;;
        3 ) $cmd $prog3 -y ; enter ;;
        4 ) $cmd $prog4 -y ; enter ;;
        5 ) $cmd $prog5 -y ; enter ;;
        6 ) $cmd $prog6 -y ; enter ;;
        7 ) $cmd $prog7 -y ; enter ;;
        8 ) $cmd $prog8 -y ; enter ;;
        9 ) $cmd $prog9 -y ; enter ;;
        10 ) $cmd $prog10 -y ; enter ;;
        11 ) $cmd $prog11 -y ; enter ;;
        00 ) $cmd $all -y ; enter ;;
        0 ) exit ;;
        * ) echo "Please enter one number"; enter
    esac
done
