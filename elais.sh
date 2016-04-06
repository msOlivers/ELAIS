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

menu(){
echo "
${BWhite}[++++++++++++++++++++++++++++++++++++++++++++++++++++++++++]
[++] ELAIS - Essential Linux Apps Installer Script	[++]
[++]${reset} 	${BBlue}Essential Linux Apps Installer Script${reset}		${BWhite}[++]
[++] 	Created by: ${Red}Moisés Oliver${reset} (${Yellow}msOliver${reset}) 		${BWhite}[++]
[++] 	Contributor: ${Green}Leandro Neni${reset} (${Yellow}ishock${reset}) 		${BWhite}[++]
[++] 	Contributor: ${Green}Robson Moreira${reset} (${Yellow}RobsonMr${reset}) 		${BWhite}[++]
[++] 		Version:${reset} ${Red}1.0${reset} 				${BWhite}[++]
[++]	 Follow me on Twitter:${reset} ${Purple}@msOliver_s${reset} 		${BWhite}[++]
[++] 	Channel:${reset} ${Blue}https://goo.gl/dnglar${reset}		 	${BWhite}[++]
[++] Homepage:${reset} ${Blue}http://mstutoriall.blogspot.com.br/${reset}	[++]
[++++++++++++++++++++++++++++++++++++++++++++++++++++++++++] 
"
}

enter() {
    echo -n "Press Enter to continue"
    clear
}
all="audacity etherape gnome-mplayer gpaint gufw kdenlive libreoffice mingw32 mitmf openshot transmission"
apt_1="audacity"
#	Adobe Flash Player
#	chrome
apt_2="cmatrix"
apt_3="conky" #conky -x 989 -y 35 -q
apt_4="deluge-gtk"
apt_5="etherape"
apt_6="filezilla"
apt_7="gnome-mplayer"
apt_8="gpaint"
apt_9="guake"
apt_10="gufw"
apt_11="k3b"
apt_12="libreoffice"
apt_13="mingw32"
apt_14="mitmf"
apt_15="openshot"
#	sublime
apt_16="transmission"
#	VirtualBox
#	VMWare

#chrome https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

item=
until [ "$item" = "0" ]; do
	menu
	sleep 3 ;
	echo " ${BBlue}Select from the menu:${reset}\n"
	echo "	
  1 ) audacity
  2 ) Adobe Flash Player
  3 ) chrome
  4 ) cmatrix
  5 ) conky
  6 ) deluge-gtk
  7 ) etherape
  8 ) filezilla
  9 ) gnome-mplayer
 10 ) gpaint
 11 ) guake
 12 ) gufw
 13 ) k3b
 14 ) libreoffice
 15 ) mingw32
 16 ) mitmf
 17 ) openshot
 18 ) sublime
 19 ) transmission
 20 ) VirtualBox
 21 ) VMWare
 22 )
 23 )
 24 )
 25 )
 99) - All

 0 - Exit the ELAIS
"
echo " $var"	
	echo -n "${Purple}elais${reset}> "
	read item
	echo ""
    case $item in
        1 ) echo "[++} Iniciando instalacao do (${BGreen}Audacity${reset}) [++]\n";
		sleep 1;
		$cmd $prog1 -y ; enter ;;
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
    esac
done
