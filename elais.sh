#!/bin/bash

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

selec=
until [ "$selec" = "0" ]; do
    echo ""
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
    echo -n "Enter selection: "
    read selec
    echo ""
    case $selec in
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
