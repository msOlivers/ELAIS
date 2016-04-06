#!/bin/sh
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
	if [ "$item" -eq 1 ]; then	#################### ITEM 1 PROG 1
		if which -a "$apt_1"; then
			var="O Programa ${Red}$apt_1${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$apt_1${reset}) [++]\n"
			apt-get install $apt_1
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 2 ]; then	#################### ITEM 2 PROG 2
		#if which -a "$prog2"; then
		#	var="O Programa ${Red}$prog2${reset} ja esta instalado "
		#else
		echo "${Green}[++]${reset} Iniciando instalacao (${BGreen}Adobe Flash Player${reset})\n"
		#	apt-get install $prog2
		#fi ; enter;
		echo "${Green}[++]${reset} ${BBlue}Acessando pasta${reset}"
		sleep 1
		cd /usr/lib/mozilla/plugins
		echo "${Green}[++]${reset} ${BYellow}Inicinado Download${reset}"
		sleep 1
		#wget https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.577/install_flash_player_11_linux.x86_64.tar.gz
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
	elif [ "$item" -eq 3 ]; then	#################### ITEM 3 PROG 3
		if which -a "$prog3"; then
			var="O Programa ${Red}$prog3${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog3${reset}) [++]\n"
			apt-get install $prog3
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 4 ]; then	#################### ITEM 4 PROG 4
		if which -a "$prog4"; then
			var="O Programa ${Red}$prog4${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog4${reset}) [++]\n"
			apt-get install $prog4
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 5 ]; then	#################### ITEM 5 PROG 5
		if which -a "$prog5"; then
			var="O Programa ${Red}$prog5${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog5${reset}) [++]\n"
			apt-get install $prog5
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 6 ]; then	#################### ITEM 6 PROG 6
		if which -a "$prog6"; then
			var="O Programa ${Red}$prog6${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog6${reset}) [++]\n"
			apt-get install $prog6
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 7 ]; then	#################### ITEM 7 PROG 7
		if which -a "$prog7"; then
			var="O Programa ${Red}$prog7${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog7${reset}) [++]\n"
			apt-get install $prog7
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 8 ]; then	#################### ITEM 8 PROG 8
		if which -a "$prog8"; then
			var="O Programa ${Red}$prog8${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog8${reset}) [++]\n"
			apt-get install $prog8
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 9 ]; then	#################### ITEM 9 PROG 9
		if which -a "$prog9"; then
			var="O Programa ${Red}$prog9${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog9${reset}) [++]\n"
			apt-get install $prog9
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 10 ]; then	#################### ITEM 10 PROG 10
		if which -a "$prog10"; then
			var="O Programa ${Red}$prog10${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog10${reset}) [++]\n"
			apt-get install $prog10
		fi ; enter;
#########################################################################################################
	elif [ "$item" -eq 11 ]; then	#################### ITEM 11 PROG 11
		if which -a "$prog11"; then
			var="O Programa ${Red}$prog11${reset} ja esta instalado "
		else
			echo "[++} Iniciando instalacao (${BGreen}$prog11${reset}) [++]\n"
			apt-get install $prog11
		fi ; enter;
#########################################################################################################
		
	fi ;

}
until [ "$item" = "0" ]; do
	menu
	sleep 3 ;
	echo " ${BBlue}Select from the menu:${reset}\n"
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
 99) - All

 0 - Exit the ELAIS
"
echo " $var"	
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
        0 ) echo "${Red}Quiting${reset}" ; exit ;;
	*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    esac
done
