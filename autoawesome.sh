#!/bin/bash

## COLORS

negro="\e[0;30m"
grisoscuro="\e[0;31m"
azul="\e[0;34m"
verde="\e[0;32m"
verderesaltado="\e[0;32m"
cian="\e[0;36m"
cianresaltado="\e[1;36m"
rojo="\e[0;31m"
rojoresaltado="\e[1;31m"
purpura="\e[0;35m"
purpuraresaltado="\e[1;35m"
cafe="\e[0;33m"
amarillo="\e[1;33m"
gris="\e[0;37m"
blanco="\e[0;31m"

## Variables
allnumbers="^[0-9]+$"
index="${azul}[${rojo}+${azul}]${amarillo}"
user="whoami"
selecion="(${verderesaltado}Y${amarillo}/${rojo}N${amarillo})${azul}"
export directory=$PWD

## Función CTRL + C
trap ctrl_c INT
function ctrl_c(){
	clear
	echo -e "$index Saliendo... $directory" 
	sleep 2
	clear
	exit 0
}

## Logo
function logo(){
	echo -e "
	$index Automatic Awesome by ${verderesaltado}Nix${amarillo} --> Script de ayuda para ${verderesaltado}@s4vitar ${gris}

	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%(*,,.,......,,*(#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@@@@@@@@#,..,,,,,,,,...,,..,,,,,,,,,,../&@@@@@@@@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@@@&..,,,,,..#@@@@@@@@@@@@@@@@@@@@%*.,,,,,,.#@@@@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@/.,,,,.*&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(.,,,,,,&@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@(,,,,,,%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/,,,,,,@@@@@@@@@@@@@
	@@@@@@@@@@@,,,,,.%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,*,,,,%@@@@@@@@@@
	@@@@@@@@@,,,,,,@@@@@@@@..%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(,*,*,&@@@@@@@@
	@@@@@@@(,***,&@@@@@@@@@.,,,*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/****,@@@@@@@
	@@@@@@,****(@@@@@@@@@@@.,,,,,.#@@@@@@@@@@@@@@@@@ ........#@@@@@@@@@@&,***,%@@@@@
	@@@@@,***,&@@@@@@@@@@@@.,,,,,,,,.@@@@@@@@@@@@@@@.,,,,,,,,#@@@@@@@@@@@@*****(@@@@
	@@@@,***,@@@@@@@@@@@@@@.,**,,,,,,,,%@@@@@@@@@@@@.**,,,,,,#@@@@@@@@@@@@@*****#@@@
	@@@*****&@@@@@@@@@@@@@@.********,,,***@@@@@@@@@@,********#@@@@@@@@@@@@@@.*/*,%@@
	@@#*///*@@@@@@@@@@@@@@@.***************,%@@@@@@@*/(//////#@@@@@@@@@@@@@@@*///*@@
	@@*///*&@@@@@@@@@@@@@@@,***/////*********//@@@@@*((###(((%@@@@@@@@@@@@@@@*///*&@
	@@*///*@@@@@@@@@@@@@@@@,//////////////////((/%@@*((#####%&@@@@@@@@@@@@@@@/////(@
	@@*///*@@@@@@@@@@@@@@@@,/////(//#@%*(((////((((//(######%&@@@@@@@@@@@@@@@(////(@
	@@*(((*@@@@@@@@@@@@@@@@,/(((((((#@@@@/((/(((((((((((#####%@@@@@@@@@@@@@@@//((/(@
	@@/((((%@@@@@@@@@@@@@@@*((((((((#@@@@@@#/((((((((((((((((%@@@@@@@@@@@@@@@*(((/@@
	@@&/(((/@@@@@@@@@@@@@@@/((((####%@@@@@@@@@/((((((((###(((%@@@@@@@@@@@@@@&(((((@@
	@@@((((##@@@@@@@@@@@@@@/########%@@@@@@@@@@@%(###########%@@@@@@@@@@@@@@/(((/@@@
	@@@@(##((&@@@@@@@@@@@@@(########%@@@@@@@@@@@@@@(#########%@@@@@@@@@@@@@/#(#(%@@@
	@@@@@(####%@@@@@@@@@@@@(####%%%%%@@@@@@@@@@@@@@@@%##%%%%%&@@@@@@@@@@@@/##((&@@@@
	@@@@@@#####(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%&&%&&@@@@@@@@@@%####/@@@@@@
	@@@@@@@@(####%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&@@@@@@@@@@######@@@@@@@
	@@@@@@@@@%##%##%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(%##%(@@@@@@@@@
	@@@@@@@@@@@&#%%#%#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%#%%#%#@@@@@@@@@@@
	@@@@@@@@@@@@@@#%%%%%#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%#%%%%#&@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@#%%%%%%#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#%%%%%#%@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@@@@@#%%%%%%%##&@@@@@@@@@@@@@@@@@%#%%%%%%&#%@@@@@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@@@@@@@@@@%#%%&%%%%%%%%%%%%%%%%%%%%%#%&@@@@@@@@@@@@@@@@@@@@@@@@@
	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&%%%%%&%&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
}

## Main Code
chmod 777 $directory
clear
#logo
sleep 1
clear
echo -e "$index Bienvenido a la instalación,$verderesaltado $($user)."
sleep 1
echo -e "$index ¿Desea inicializar la instalación? $selecion"
read inicio

if [[ "$inicio" == "Y" ]] || [[ "$inicio" == "y" ]] || [[ "$inicio" == "Yes" ]] || [[ "$inicio" == "yes" ]] || [[ "$inicio" == "YES" ]] || [[ "$inicio" == "SI" ]] || [[ "$inicio" == "si" ]] || [[ "$inicio" == "Si" ]] || [[ "$inicio" == "S" ]] || [[ "$inicio" == "s" ]]
then
    clear	
	echo -e "$index Iniciando..."
	sleep 5
	clear
	echo -e "$index Actualizando todos los paquetes..."
	sudo pacman -S git wget 
	sleep 1
    sudo pacman -Syu
    clear
	echo -e "$index Instalación de Navegador"
	echo -e "$index ¿Qué navegador desea instalar? (1-2-3)"
	echo ""
	echo -e "$index 1. FireFox"
	sleep 0.2
	echo -e "$index 2. Google-Chrome"
	sleep 0.2
	echo -e "$index 3. Brave"
	sleep 0.2

	read navegador
	if [[ "$navegador" == "1" ]] # Firefox
	then
		sudo pacman -S firefox
		clear
	    echo -e "$index Firefox Instalado Correctamente."
	else if [[ "$navegador" == "2" ]] # Google-Chrome RECORDAR DESPUES CREAR EL ALIAS PARA GOOGLE google-chrome-stable &> /dev/null & disown clear
	then
	    git clone https://aur.archlinux.org/google-chrome.git
	    cd google-chrome
	    makepkg -si
	    cd .. && rm -r google-chrome
	    sleep 2
	    clear
        echo -e "$index Google-Chrome Instalado Correctamente."
    else if [[ "$navegador" == "3" ]]
    then
        echo -e "$index Instalando Brave..."
        cd /home/$USER/
        git clone https://aur.archlinux.org/brave-bin.git
        clear 
        cd brave-bin
        makepkg -sir
        clear
        echo -e "$index Brave instalado correctamente en $verderesaltado $directory $amarillo"
        sleep 2
    fi 
    fi
    fi

    clear 
    echo -e "$index Iniciando instalación de awesome..."
    sleep 2
    paru -S awesome-git
    paru -Sy picom-git alacritty rofi todo-bin acpi acpid acpi_call \
    wireless_tools jq inotify-tools polkit-gnome xdotool xclip maim \
    brightnessctl alsa-utils alsa-tools pulseaudio lm_sensors gpick \
    mpd mpc mpdris2 ncmpcpp playerctl redshift ffmpeg bluez-utils --needed
    systemctl --user enable mpd.service
    systemctl --user start mpd.service
    sudo systemctl enable acpid.service
    sudo systemctl start acpid.service
    clear
    sleep 1
    sudo cd /usr/share/fonts
    wget http://fontlot.com/downfile/5baeb08d06494fc84dbe36210f6f0ad5.105610
    sudo pacman -S p7zip
    mv 5baeb08d06494fc84dbe36210f6f0ad5.105610 comprimido.zip && unzip comprimido.zip
    find $directory | grep "\.ttf$" | while read line; do cp $line .; done && sudo rm -r iosevka-2.2.1 iosevka-slab-2.2.1
    sleep 5
    clear
    echo -e "$index Completado."

else if [[ "$inicio" == "N" ]] || [[ "$inicio" == "n" ]] || [[ "$inicio" == "no" ]] || [[ "$inicio" == "NO" ]] || [[ "$inicio" == "No" ]]
then
ctrl_c # Funcion salir
fi
fi