#!/bin/sh
# autor: msOliver
# Colaborador: ishock

script="ELAIS"
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

banner(){
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
menu(){
	echo " ${BBlue}Select from the menu:${reset}"
	echo "	
  1 ) Audacity - é um software livre de edição digital de áudio disponível para: Windows, Linux e Mac e ainda em outros OS.
  2 ) Flash Player - é um reprodutor de multimédia e aplicações amplamente 
  3 ) Chrome - é um navegador desenvolvido pelo Google
  4 ) Cmatrix - num sei oque é n, mas o pessoal usa, ai eu uso tmb
  5 ) Conky - é um software monitor de sistema
  6 ) Deluge-gtk - é uma aplicação BitTorrent leve, mas cheio de recursos escrito em Python
  7 ) Etherape - é um monitor de rede gráfica para Unix modelado após etherman.
  8 ) Filezilla - para transferir arquivos através da Internet.
  9 ) Gnome-mplayer - também conhecido como Gmplayer, é basicamente uma interface gráfica (GUI) para o player multimídia Mplayer
 10 ) Gpaint - é um programa simples para desenhos. 
 11 ) Guake - é um terminal para Gnome no estilo suspenso, feito em Python
 12 ) Gufw - é uma interface gráfica para o UFW (Firewall Uncomplicated)
 13 ) K3b -  é um programa de computador que funciona como uma interface gráfica para a gravação de CD-ROMs e DVDs
 14 ) Libreoffice - é uma suíte de aplicativos livre para escritório disponível para Windows, Unix, Solaris, Linux e Mac OS X
 15 ) Mingw32 - (Minimalist GNU for Windows) é uma versão portada para Microsoft Windows do conjunto de ferramentas GNU
 16 ) Mitmf - visa proporcionar para ataques man-in-the-middle de rede, atualizar e melhorar ataques e técnicas existentes.
 17 ) Openshot - Video Editor um software livre e de código aberto de edição de vídeo para Linux, OS X e Windows
 18 ) Sublime - é um editor de texto sofisticado para código
 19 ) Transmission - é um leve e simples cliente de BitTorrent que apresenta uma interface gráfica bem simples e um back-end
 20 ) VirtualBox - VirtualBox é um software de virtualização 
 21 ) VMWare - VMWare é um software de virtualização 
 99 ) - All

 0 - Exit the ELAIS
"
}

enter() {
	echo ""
	echo -n "${Green}[++]${reset} Press ${Blue}Enter${reset} to continue "
	read enter
	clear
}

all="audacity etherape gnome-mplayer gpaint gufw kdenlive libreoffice mingw32 mitmf openshot transmission"
apt_1="audacity"
#   2 Adobe Flash Player
#   3 chrome
apt_4="cmatrix"
apt_5="conky" #conky -x 989 -y 35 -q
apt_6="deluge-gtk"
apt_7="etherape"
apt_8="filezilla"
apt_9="gnome-mplayer"
apt_10="gpaint"
apt_11="guake"
apt_12="gufw"
apt_13="k3b"
apt_14="libreoffice"
apt_15="mingw32"
apt_16="mitmf"
apt_17="openshot"
#   18 sublime
apt_19="transmission"
#   20 VirtualBox
#   21 VMWare

#install gedit-plugins

#chrome https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

item=
aptGet() {
#########################################################################################################
	if [ "$item" -eq 1 ]; then	#################### ITEM 1 PROG 1 apt_1="audacity"
		if which -a "$apt_1"; then
			echo " O Programa ${Red}$apt_1${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
			apt-get install $apt_1 -y
			echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 2 ]; then	#################### ITEM 2 PROG 2  Adobe Flash Player
		echo "${Green}[++]${reset} Iniciando instalacao (${BGreen}Adobe Flash Player${reset})\n"
		echo "${Green}[++]${reset} ${BBlue}Acessando pasta${reset}"
		sleep 1
		cd /usr/lib/mozilla/plugins
		echo "${Green}[++]${reset} ${BYellow}Inicinado Download${reset}"
		sleep 1
		wget https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.577/install_flash_player_11_linux.x86_64.tar.gz
		echo "${Green}[++]${reset} ${BBlue}Download finalizado${reset}"
		sleep 1
		echo "${Green}[++]${reset} ${BYellow}Descompactando arquivo${reset}"
		sleep 1
		tar -xf install_flash_player_11_linux.x86_64.tar.gz
		echo "${Green}[++]${reset} ${BBlue}Removendo sobras${reset}"
		sleep 1
		rm install_flash_player_11_linux.x86_64.tar.gz
		rm readme.txt
		sleep 1
		echo "${Green}[++]${reset} ${BGreen}Adobe flash player instalado com sucesso${reset}" ; enter;
#########################################################################################################
	elif [ "$item" -eq 3 ]; then	#################### ITEM 3 PROG 3 CHROME
		if which -a "$prog3"; then
			var="O Programa ${Red}$prog3${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog3${reset}) [++]\n"
			apt-get install $prog3
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 4 ]; then	#################### ITEM 4 PROG 4 apt_4="cmatrix"
		if which -a "$apt_4"; then
			echo " O Programa ${Red}$apt_4${reset} ja esta instalado"
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
			apt-get install $apt_4 -y
			echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 5 ]; then	#################### ITEM 5 PROG 5 apt_5="conky"
		if which -a "$apt_5"; then
			echo " O Programa ${Red}$apt_5${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
			apt-get install $apt_5 -y
			echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 6 ]; then	#################### ITEM 6 PROG 6 apt_6="deluge-gtk"
		if which -a "$apt_6"; then
			echo " O Programa ${Red}$apt_6${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_6${reset}) [++]\n"
			apt-get install $apt_6 -y
			echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 7 ]; then	#################### ITEM 7 PROG 7 apt_7="etherape"
		if which -a "$apt_7"; then
			echo " O Programa ${Red}$apt_7${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_7${reset}) [++]\n"
			apt-get install $apt_7 -y
			echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 8 ]; then	#################### ITEM 8 PROG 8 apt_8="filezilla"
		if which -a "$apt_8"; then
			echo " O Programa ${Red}$apt_8${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_8${reset}) [++]\n"
			apt-get install $apt_8 -y
			echo "[++] (${BGreen}$apt_8${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 9 ]; then	#################### ITEM 9 PROG 9 apt_9="gnome-mplayer"
		if which -a "$apt_9"; then
			echo " O Programa ${Red}$apt_9${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_9${reset}) [++]\n"
			apt-get install $apt_9 -y
			echo "[++] (${BGreen}$apt_9${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 10 ]; then	#################### ITEM 10 PROG 10 apt_10="gpaint"
		if which -a "$apt_10"; then
			echo " O Programa ${Red}$apt_10${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_10${reset}) [++]\n"
			apt-get install $apt_10 -y
			echo "[++] (${BGreen}$apt_10${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 11 ]; then	#################### ITEM 11 PROG 11 apt_11="guake"
		if which -a "$apt_11"; then
			echo " O Programa ${Red}$apt_11${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_11${reset}) [++]\n"
			apt-get install $apt_11 -y
			echo "[++] (${BGreen}$apt_11${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 12 ]; then	#################### ITEM 12 PROG 12 apt_12="gufw"
		if which -a "$apt_12"; then
			echo " O Programa ${Red}$apt_12${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_12${reset}) [++]\n"
			apt-get install $apt_12 -y
			echo "[++] (${BGreen}$apt_12${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 13 ]; then	#################### ITEM 13 PROG 13 apt_13="k3b"
		if which -a "$apt_13"; then
			echo " O Programa ${Red}$apt_13${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_13${reset}) [++]\n"
			apt-get install $apt_13 -y
			echo "[++] (${BGreen}$apt_13${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 14 ]; then	#################### ITEM 14 PROG 14 apt_14="libreoffice"
		if which -a "$apt_14"; then
			echo " O Programa ${Red}$apt_14${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_14${reset}) [++]\n"
			apt-get install $apt_14 -y
			echo "[++] (${BGreen}$apt_14${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 15 ]; then	#################### ITEM 15 PROG 15 apt_15="mingw32"
		if which -a "$apt_15"; then
			echo " O Programa ${Red}$apt_15${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_15${reset}) [++]\n"
			apt-get install $apt_15 -y
			echo "[++] (${BGreen}$apt_15${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 16 ]; then	#################### ITEM 16 PROG 16 apt_16="mitmf"
		if which -a "$apt_16"; then
			echo " O Programa ${Red}$apt_16${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_16${reset}) [++]\n"
			apt-get install $apt_16 -y
			echo "[++] (${BGreen}$apt_16${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 17 ]; then	#################### ITEM 17 PROG 17 apt_17="openshot"
		if which -a "$apt_17"; then
			echo " O Programa ${Red}$apt_17${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$apt_17${reset}) [++]\n"
			apt-get install $apt_17 -y
			echo "[++] (${BGreen}$apt_17${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 18 ]; then	#################### ITEM 18 PROG 18 #   18 sublime
		if which -a "$prog9"; then
			echo " O Programa ${Red}$prog9${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$prog9${reset}) [++]\n"
			apt-get install $prog9
			echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 10 ]; then	#################### ITEM 10 PROG 10
		if which -a "$prog10"; then
			echo " O Programa ${Red}$prog10${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$prog10${reset}) [++]\n"
			apt-get install $prog10
			echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 11 ]; then	#################### ITEM 11 PROG 11
		if which -a "$prog11"; then
			echo " O Programa ${Red}$prog11${reset} ja esta instalado "
		else
			echo "[++] Iniciando instalacao (${BGreen}$prog11${reset}) [++]\n"
			apt-get install $prog11
			echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
		fi ; enter;
#########################################################################################################
		
	fi ;
}

until [ "$item" = "0" ]; do
	banner
	sleep 3 ;
	menu
	echo -n "${Purple}elais${reset}> "
	read item
	echo ""
	case $item in
        1 ) aptGet ;;
	2 ) aptGet ;;
	3 ) aptGet ;;
	4 ) aptGet ;;
	5 ) aptGet ;;
	6 ) aptGet ;;
	7 ) aptGet ;;
	8 ) aptGet ;;
	9 ) aptGet ;;
	99 ) apt-get install $all;;
        0 ) echo "[--] ${Red}Turning $script${reset}" ; sleep 2 ; clear ; exit ;;
	*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    esac
done
