#!/bin/sh
# autor: msOliver
# Colaborador: ishock
# Colaborador: RobsonMr

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

#line blank

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
enter() {
	echo ""
	echo -n "${Green}[++]${reset} Press ${Blue}Enter${reset} to continue "
	read enter
	clear
}
checkLinuxHeaders(){ #Linux-headers check
	dir=$(find /usr/src -type d -name linux-headers-$(uname -r))
	if [ -n "$dir" ] ; then 
		return 0
	else
		echo "${BWhite} Linux-headers é necessario e nao esta instalado${reset}"
		sleep 2
		echo "${BWhite} Inicializando instalacao automatica${reset}"
		sleep 2
		echo "${BWhite} Aplicando Update${reset}"
		sleep 2
		echo "${BWhite}"
		apt-get update #&& apt-get upgrade
		echo "${reset}"
		echo "\n${BWhite} Iniciando instalacao\n${reset}"
		sleep 1
		echo "${BWhite}"
		#apt-get install -y linux-headers-$(uname -r)
		echo "${reset}"
		echo "${BWhite} Instalacao Concluida\n${reset}"
	fi ; #enter;
}
menuPrincipal(){
	echo " ${BBlue}Select from the menu:${reset}"
	echo ""
}

menuEditorsMusicVideo(){ 
	option=
	local apt_1="audacity"
	local apt_2="kazam"
	local apt_3="kdenlive"
	local apt_4="openshot"
	aptGetInstallEditorsMusicVideo() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1 
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_4
				echo "${reset}"
				echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Editors Music & Video ${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
  1) audacity - 
  2) kazam - 
  3) kdenlive - 
  4) openshot - 
 
  0) return menu principal
"
		echo -n "${Purple}elais/EditorsMusicVideo${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallEditorsMusicVideo ;;
        		2 ) aptGetInstallEditorsMusicVideo ;;
        		3 ) aptGetInstallEditorsMusicVideo ;;
			4 ) aptGetInstallEditorsMusicVideo ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done	
}
menuImageEditors(){ 
	option=
	local apt_1="darktable"
	local apt_2="digikam" 
	local apt_3="f-spot"
	local apt_4="fotoxx" 
	local apt_5="gimp"
	local apt_6="gpaint"
	#local apt_7="photivo"
	#local apt_8="rstudio"
	#local apt_9="rawtherapee"
	local OS=$(lsb_release -si)
	local _OS="Ubuntu"
	aptGetInstallImageEditors() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				if [ "$OS" != "$_OS" ]; then
					echo "\n ${Red}Nao pode roda no${reset} ${Blue}$OS${reset}"
				else
					echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
					sleep 1	
					if which -a "git" 1>/dev/null 2>/dev/null; then
						return 0
					else
						echo "Instalando git"
						apt-get install -y git
					fi;
					echo "Instalando dependencias\n"
					echo "${BWhite}"
					apt-get install -y debhelper dpkg-dev fakeroot
					apt-get build-dep darktable
					apt-get install -y gtk+-3.0
					echo "${reset}"					
					sleep 1
					cd /tmp
					git clone https://github.com/darktable-org/darktable.git
					cd darktable
					./build.sh --prefix /opt/darktable --build-type Release
					echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
				fi;
			fi ; enter;
		elif [ "$option" -eq 2 ]; then
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else	
				if [ "$OS" != "$_OS" ]; then
					echo "\n ${Red}Nao pode roda no${reset} ${Blue}$OS${reset}"
				else
					echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
					echo "${BWhite}"
					sudo add-apt-repository ppa:f-spot/f-spot-ppa && sudo apt-get update
					apt-get install -y $apt_3
					echo "${reset}"
					echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
					
				fi;
			fi ; enter;
		elif [ "$option" -eq 4 ]; then
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				if [ "$OS" != "$_OS" ]; then
					echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
					cd /tmp
					echo "${BWhite}"
					wget http://kornelix.net/downloads/packages/fotoxx-16.02.1-x86_64.deb -O fotoxx.deb
					echo "${reset}"
					dpkg -i fotoxx.deb
					apt-get install -f
					rm fotoxx.deb
					echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
				else
					echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
					add-apt-repository ppa:dhor/myway
					echo "${BWhite}"
					apt-get update
					apt-get install -y $apt_4
					echo "${reset}"
					echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
				fi;			
			fi ; enter;
		elif [ "$option" -eq 5 ]; then
			if which -a "$apt_5" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_5${reset} ja esta instalado "
			else
				if [ "$OS" != "$_OS" ]; then
					echo "[++} Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
					sudo add-apt-repository ppa:otto-kesselgulasch/gimp
					echo "${BWhite}"
					sudo apt-get update && apt-get install -y $apt_5
					echo "${reset}"
					echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
				else
					echo "[++} Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
					apt-get install -y $apt_5
					echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
				fi;

			fi ; enter;
		elif [ "$option" -eq 6 ]; then
			if which -a "$apt_6" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_6${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_6${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_6
				echo "${reset}"
				echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Image Editors ${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) Darktable
 2) DigiKam
 3) F-Spot
 4) Fotoxx
 5) Gimp
 6) Gpaint 
  
 0) return menu principal
"
		echo -n "${Purple}elais/ImageEditors${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallImageEditors ;;
        		2 ) aptGetInstallImageEditors ;;
        		3 ) aptGetInstallImageEditors ;;
			4 ) aptGetInstallImageEditors ;;
			5 ) aptGetInstallImageEditors ;;
			6 ) aptGetInstallImageEditors ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done	
}
menuMultimidia(){ 
	option=
	local apt_1="gnome-mplayer"
	local apt_2="k3b"
	aptGetInstallMultimidia() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Multimidia ${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) Gnome-mplayer
 2) K3b
  
 0) return menu principal
"
		echo -n "${Purple}elais/Multimidia${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallMultimidia ;;
        		2 ) aptGetInstallMultimidia ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuNetworkMappings(){ 
	option=
	local apt_1="dsniff"
	local apt_2="ettercap-common"
	local apt_3="ettercap-graphical"
	local apt_4="etherape"
	local apt_5="kismet"
	local apt_6="nmap"
	local apt_7="sniffit"
	local apt_8="snort"
	local apt_9="tshark"
	local apt_10="wireshark"
	aptGetInstallNetworkMappings() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then	
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_4
				echo "${reset}"
				echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 5 ]; then	
			if which -a "$apt_5" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_5${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_5
				echo "${reset}"
				echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 6 ]; then	
			if which -a "$apt_6" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_6${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_6${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_6
				echo "${reset}"
				echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 7 ]; then	
			if which -a "$apt_7" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_7${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_7${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_7
				echo "${reset}"
				echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 8 ]; then	
			if which -a "$apt_8" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_8${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_8${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_8
				echo "${reset}"
				echo "[++] (${BGreen}$apt_8${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 9 ]; then	
			if which -a "$apt_9" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_9${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_9${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_9
				echo "${reset}"
				echo "[++] (${BGreen}$apt_9${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 10 ]; then	
			if which -a "$apt_10" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_10${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_10${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_10
				echo "${reset}"
				echo "[++] (${BGreen}$apt_10${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Network Mappings ${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
  1) dsniff
  2) ettercap-common
  3) ettercap-graphical
  4) etherape
  5) kismet
  6) nmap
  7) sniffit
  8) snort
  9) tshark
 10) wireshark
  
 0) return menu principal
"
		echo -n "${Purple}elais/NetworkMappings${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallNetworkMappings ;;
        		2 ) aptGetInstallNetworkMappings ;;
        		3 ) aptGetInstallNetworkMappings ;;
			4 ) aptGetInstallNetworkMappings ;;
			5 ) aptGetInstallNetworkMappings ;;
			6 ) aptGetInstallNetworkMappings ;;
			7 ) aptGetInstallNetworkMappings ;;
			8 ) aptGetInstallNetworkMappings ;;
			9 ) aptGetInstallNetworkMappings ;;
			10 ) aptGetInstallNetworkMappings ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done  
}
menuOffice(){ 
	option=
	local apt_1="libreoffice"
	aptGetInstallOffice() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Office${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) Libreoffice - é uma suíte de aplicativos livre para escritório disponível para Windows, Unix, Solaris, Linux e Mac OS X
  
 0) return menu principal
"
		echo -n "${Purple}elais/Office${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallOffice ;;
#        		2 ) aptGetInstallOffice ;;
			* ) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done  
}
menuPackageManager(){ 
	option=
	local apt_1="deluge-gtk"
	local apt_2="gdebi"
	local apt_3="synaptic"
	local apt_4="transmission"
	local OS=$(lsb_release -si)
	local _OS="Ubuntu"
	aptGetInstallPackageManager() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				if [ "$OS" != "$_OS" ]; then	
					echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
					sudo echo "deb http://us.archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
					echo "${BWhite}"
					sudo apt-get update
					apt-get install -y $apt_1
					echo "${reset}"
					echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
				else
					echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
					echo "${BWhite}"
					apt-get install -y $apt_1
					echo "${reset}"
					echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
				fi
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then	
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_4
				echo "${reset}"
				echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Package Manager${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) Deluge-gtk
 2) Gdebi
 3) Synaptic
 4) Transmission
  
 0) return menu principal
"
		echo -n "${Purple}elais/PackageManager${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallPackageManager ;;
        		2 ) aptGetInstallPackageManager ;;
        		3 ) aptGetInstallPackageManager ;;
			4 ) aptGetInstallPackageManager ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuServers(){ 
	option=
	local apt_1="apache2"
	local apt_2="mysql-server"
	local apt_3="php5"
	local apt_4="php5-cgi"
	local apt_5="php5-mcrypt"
	local apt_6="php5-mysql"
	local apt_7="phpmyadmin "
	aptGetInstallServers() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then	
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_4
				echo "${reset}"
				echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 5 ]; then	
			if which -a "$apt_5" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_5${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_5
				echo "${reset}"
				echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 6 ]; then	
			if which -a "$apt_6" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_6${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_6${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_6
				echo "${reset}"
				echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 7 ]; then	
			if which -a "$apt_7" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_7${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_7${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_7
				echo "${reset}"
				echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Servers ${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) apache2
 2) mysql-server
 3) php5
 4) php5-cgi
 5) php5-mcrypt
 6) php5-mysql
 7) phpmyadmin
  
 0) return menu principal
"
		echo -n "${Purple}elais/Servers${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallServers ;;
        		2 ) aptGetInstallServers ;;
        		3 ) aptGetInstallServers ;;
			4 ) aptGetInstallServers ;;
			5 ) aptGetInstallServers ;;
			6 ) aptGetInstallServers ;;
			7 ) aptGetInstallServers ;;
			* ) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuSystemMonitor(){ 
	option=
	local apt_1="conky"
	local apt_2="indicator-sysmonitor"
	local apt_3="screenlet"
	aptGetInstallSystemMonitor() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} System Monitor${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) Conky - é um software monitor de sistema
 2) Indicator-SysMonitor
 3) Screenlet
  
 0) return menu principal
"
		echo -n "${Purple}elais/SystemMonitor${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallSystemMonitor ;;
        		2 ) aptGetInstallSystemMonitor ;;
        		3 ) aptGetInstallSystemMonitor ;;
			* ) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuTextEditors(){ 
	option=
	local apt_1="bluefish"
	local apt_2="cream"
	local apt_3="jedit"
	local apt_4="sublime"
	aptGetInstallTextEditors() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_2
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then	
			if which -a "$apt_6" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_6${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_6${reset}) [++]\n"
				echo "${BWhite}"
				cd /tmp
				wget https://download.sublimetext.com/sublime-text_build-3103_amd64.deb
				echo "${reset}"
				dpkg -i sublime-text_build-3103_amd64.deb
				sleep 1
				rm sublime-text_build-3103_amd64.deb
				echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Text Editors${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) bluefish 
 2) cream 
 3) Jedit
 4) Sublime
  
 0) return menu principal
"
		echo -n "${Purple}elais/TextEditors${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallTextEditors ;;
        		2 ) aptGetInstallTextEditors ;;
        		3 ) aptGetInstallTextEditors ;;
			4 ) aptGetInstallTextEditors ;;
			5 ) aptGetInstallTextEditors ;;
			6 ) aptGetInstallTextEditors ;;
			* ) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuUtilities(){ 
	option=
	local apt_1="cmatrix"
	local apt_2="FlashPlayer"
	local apt_3="guake"
	local apt_4="gufw"
	local apt_5="mingw32"
	dirr=$(find /usr/lib/mozilla/plugins -type d -name usr) ###########################
	aptGetInstallUtilities() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				apt-get install -y $apt_1
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if [ -n "$dirr" ] ; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "${BBlue} Acessando pasta${reset}"
				sleep 3
				cd /usr/lib/mozilla/plugins
				echo "${BBlue} Inicinado Download${reset}"
				sleep 3
				echo "${BWhite}"
				#wget https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.577/install_flash_player_11_linux.x86_64.tar.gz
				wget https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.616/install_flash_player_11_linux.x86_64.tar.gz
				echo "${reset}"
				echo "${BBlue} Download finalizado${reset}"
				sleep 2
				echo "${BBlue} Descompactando arquivo${reset}"
				sleep 3
				tar -xf install_flash_player_11_linux.x86_64.tar.gz
				echo "${BBlue} Removendo sobras${reset}"
				sleep 3
				rm install_flash_player_11_linux.x86_64.tar.gz
				rm readme.txt
				sleep 2
				echo "${BGreen} Adobe flash player instalado com sucesso${reset}"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then	
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_4
				echo "${reset}"
				echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 5 ]; then	
			if which -a "i586-mingw32msvc-gcc"; then
				echo "\n O Programa ${Red}$apt_5${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_5
				echo "${reset}"
				echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Utilities${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) Cmatrix - num sei oque é n, mas o pessoal usa, ai eu uso tmb
 2) Flash Player - é um reprodutor de multimédia e aplicações amplamente 
 3) Guake - é um terminal para Gnome no estilo suspenso, feito em Python
 4) Gufw - é uma interface gráfica para o UFW (Firewall Uncomplicated)
 5) Mingw32 - (Minimalist GNU for Windows) é uma versão portada para Microsoft Windows do conjunto de ferramentas GNU
  
 0) return menu principal
"
		echo -n "${Purple}elais/Utilities${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallUtilities ;;
        		2 ) aptGetInstallUtilities ;;
        		3 ) aptGetInstallUtilities ;;
			4 ) aptGetInstallUtilities ;;
			5 ) aptGetInstallUtilities ;;
			* ) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuVirtualization(){ 
	option=
	local apt_1="VirtualBoxs"
	local apt_2="VMWare"
	aptGetInstallVirtualization() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				checkLinuxHeaders
				echo "${Green}[++]${reset} Iniciando instalacao (${BGreen}$apt_1${reset})\n"
				echo "${Green}[++]${reset} ${BBlue}Acessando pasta${reset}"
				sleep 1
				cd /tmp
				echo "${Green}[++]${reset} ${BYellow}Iniciando Download${reset}"
				sleep 1
				echo "${BWhite}"
				wget http://download.virtualbox.org/virtualbox/5.0.16/VirtualBox-5.0.16-105871-Linux_amd64.run
				echo "${reset}"
				echo "${Green}[++]${reset} ${BBlue}Download finalizado${reset}"
				sleep 1
				echo "Aplicando permicoes chmod"
				sleep 1
				chmod +x VirtualBox-5.0.16-105871-Linux_amd64.run
				echo "${Green}[++]${reset} ${BYellow}Instalando $apt_20${reset}"
				sleep 1
				echo "${BWhite}"
				./VirtualBox-5.0.16-105871-Linux_amd64.run
				echo "${reset}"
				echo "${Green}[++]${reset} ${BBlue}Removendo sobras${reset}"
				sleep 1
				rm VirtualBox-5.0.16-105871-Linux_amd64.run
				sleep 1
				echo "${Green}[++]${reset} ${BGreen}$apt_1 instalado com sucesso${reset}"	
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				checkLinuxHeaders
				echo "${Green}[++]${reset} Iniciando instalacao (${BGreen}$apt_2${reset})\n"
				echo "${Green}[++]${reset} ${BBlue}Acessando pasta${reset}"
				sleep 1
				cd /tmp
				echo "${Green}[++]${reset} ${BYellow}Iniciando Download${reset}"
				sleep 1
				echo "${BWhite}"
				wget https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-11.1.3-3206955.x86_64.bundle
				echo "${reset}"
				echo "${Green}[++]${reset} ${BBlue}Download finalizado${reset}"
				sleep 1
				echo "Aplicando permicoes chmod"
				sleep 1
				chmod +x VMware-Workstation-Full-11.1.3-3206955.x86_64.bundle
				echo "${Green}[++]${reset} ${BYellow}Instalando $apt_20${reset}"
				sleep 1
				echo "${BWhite}"
				./VMware-Workstation-Full-11.1.3-3206955.x86_64.bundle
				echo "${reset}"
				echo "${Green}[++]${reset} ${BBlue}Removendo sobras${reset}"
				sleep 1
				rm VMware-Workstation-Full-11.1.3-3206955.x86_64.bundle
				sleep 1
				echo "${Green}[++]${reset} ${BGreen}$apt_2 instalado com sucesso${reset}"	
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Virtualization${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
 1) VirtualBox
 2) VMWare
  
 0) return menu principal
"
		echo -n "${Purple}elais/Virtualization${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallVirtualization ;;
        		2 ) aptGetInstallVirtualization ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}
menuWebBrowsers(){ 
	option=
	local apt_1="Chrome"
	local apt_2="Chromium"
	local apt_3="Dillo"
	local apt_4="Firefox"
	local apt_5="Firefox Develop"
	local apt_6="Iceweasel"
	local apt_7="Konqueror "
	local apt_8="Links"
	local apt_9="Liri Browser"
	local apt_10="Lynx"
	local apt_11="Maxthon"
	local apt_12="Midori"
	local apt_13="Opera"
	local apt_14="Pale Moon"
	local apt_15="QupZilla"
	local apt_16="TOR"
	local apt_17="Vivaldi "
	local apt_18="W3M"
	aptGetInstallWebBrowsers() {
		if [ "$option" -eq 1 ]; then
			if which -a "$apt_1" 1>/dev/null 2>/dev/null; then
				echo " \n O Programa ${Red}$apt_1${reset} ja esta instalado "
			else
				echo "[++] Iniciando instalacao (${BGreen}$apt_1${reset}) \n"
				echo "${BWhite}"
				cd /tmp
				wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
				chmod +x google-chrome-stable_current_amd64.deb
				sudo dpkg -i google-chrome-stable_current_amd64.deb
				sudo apt-get install -f
				sudo rm google-chrome-stable_current_amd64.deb
				echo "${reset}"
				echo "[++] (${BGreen}$apt_1${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 2 ]; then	
			if which -a "$apt_2" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_2${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_2${reset}) [++]\n"
				echo "${BWhite}"
				sudo apt-get install -y ppa-purge
				sudo apt-get install -y chromium-browser
				
				echo "${reset}"
				echo "[++] (${BGreen}$apt_2${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 3 ]; then	
			if which -a "$apt_3" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_3${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_3${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_3
				echo "${reset}"
				echo "[++] (${BGreen}$apt_3${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 4 ]; then	
			if which -a "$apt_4" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_4${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_4${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_4
				echo "${reset}"
				echo "[++] (${BGreen}$apt_4${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 5 ]; then	
			if which -a "$apt_5" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_5${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_5${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_5
				echo "${reset}"
				echo "[++] (${BGreen}$apt_5${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 6 ]; then	
			if which -a "$apt_6" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_6${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_6${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_6
				echo "${reset}"
				echo "[++] (${BGreen}$apt_6${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 7 ]; then	
			if which -a "$apt_7" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_7${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_7${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_7
				echo "${reset}"
				echo "[++] (${BGreen}$apt_7${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 8 ]; then	
			if which -a "$apt_8" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_8${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_8${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_8
				echo "${reset}"
				echo "[++] (${BGreen}$apt_8${reset}) instalado com sucesso"
			fi ; enter;
		elif [ "$option" -eq 9 ]; then	
			if which -a "$apt_8" 1>/dev/null 2>/dev/null; then
				echo "\n O Programa ${Red}$apt_8${reset} ja esta instalado "
			else
				echo "[++} Iniciando instalacao (${BGreen}$apt_8${reset}) [++]\n"
				echo "${BWhite}"
				apt-get install -y $apt_8
				echo "${reset}"
				echo "[++] (${BGreen}$apt_9${reset}) instalado com sucesso"
			fi ; enter;
		fi;
	}
	until [ "$option" = "0" ]; do
		banner
		echo "${BBlue} You are in:${reset}${BGreen} Web Browsers${reset}"
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
  1) Chrome - é um navegador desenvolvido pelo Google
  2) Chromium
  3) Dillo
  4) Firefox
  5) Firefox Develop
  6) Iceweasel
  7) Konqueror
  8) Links
  9) Liri Browser
 10) Lynx
 11) Maxthon
 12) Midori
 13) Opera
 14) Pale Moon
 15) QupZilla
 16) TOR
 17) Vivaldi
 18) W3M
  
  0) return menu principal
"
		echo -n "${Purple}elais/WebBrowsers${reset}> "
		read option
		case $option in
			0 ) clear ;; #Return
        		1 ) aptGetInstallWebBrowsers ;;
        		2 ) aptGetInstallWebBrowsers ;;
        		3 ) aptGetInstallWebBrowsers ;;
			4 ) aptGetInstallWebBrowsers ;;
			5 ) aptGetInstallWebBrowsers ;;
			6 ) aptGetInstallWebBrowsers ;;
			7 ) aptGetInstallWebBrowsers ;;
			8 ) aptGetInstallWebBrowsers ;;
			9 ) aptGetInstallWebBrowsers ;;
        		10 ) aptGetInstallWebBrowsers ;;
        		11 ) aptGetInstallWebBrowsers ;;
        		12 ) aptGetInstallWebBrowsers ;;
        		13 ) aptGetInstallWebBrowsers ;;
			14 ) aptGetInstallWebBrowsers ;;
			15 ) aptGetInstallWebBrowsers ;;
			16 ) aptGetInstallWebBrowsers ;;
			17 ) aptGetInstallWebBrowsers ;;
			18 ) aptGetInstallWebBrowsers ;;
			*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
    		esac
	done 
}

mainMenu(){
	itemMainMenu=
	until [ "$itemMainMenu" = "0" ]; do
		banner
		echo " ${BBlue}Select from the menu:${reset}"
		echo "
  Main Menus Options
  1) Editors Music & Video
  2) Image Editors
  3) Multimidia
  4) Network Mappings
  5) Office
  6) Package Manager
  7) Servers
  8) System Monitor
  9) TextEditors
 10) Utilities
 11) Virtualization
 12) WebBrowsers
  0) Quit
" 		#menu
		echo -n "${Purple}elais${reset}> "
		read itemMainMenu
		echo ""
		case $itemMainMenu in
		 0 ) echo "[--] ${Red}Turning $script${reset}" ; sleep 1; clear ; exit ;;
		 1 ) clear ; menuEditorsMusicVideo ;;
		 2 ) clear ; menuImageEditors ;;
		 3 ) clear ; menuMultimidia ;;
		 4 ) clear ; menuNetworkMappings ;;
		 5 ) clear ; menuOffice ;;
		 6 ) clear ; menuPackageManager ;;
		 7 ) clear ; menuServers ;;
		 8 ) clear ; menuSystemMonitor ;;
		 9 ) clear ; menuTextEditors ;;
		10 ) clear ; menuUtilities ;;
		11 ) clear ; menuVirtualization ;;
		12 ) clear ; menuWebBrowsers ;;
		*) echo "[++] ${Red}Invalid Option${reset}" ; enter;;
	    esac
	done
}
arc="64"
ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
if [ $ARCH != $arc  ] ; then
	echo "Nao pode roda em architecture $ARCH bit"
else
	mainMenu
fi;
