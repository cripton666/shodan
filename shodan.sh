#!/bin/bash

#Script para el uso del buscador shodan para determinar las camaras web 
#que se encuantran en dicho sitio usando junto con metasploit :)

#Creador del script Cripton666(jaime manquel)
function limpiar_pantalla {
	clear
}

trap Ctrl_c INT
 
function Ctrl_c(){
	limpiar_pantalla
	echo -e "\e[1;31m[*]\e[0m\e[0;37mSaliendo del script\e[0m"
	sudo service postgresql stop
	sleep 2s 
	limpiar_pantalla
	exit 0
}
function s {
	limpiar_pantalla
	menu
	echo -n -e "\e[0;37m           Introducir el token de shodan :\e[0m"
	read shodan
	sleep 2s 
	limpiar_pantalla
	echo -e "\e[1;31m              [*]\e[0m\e[1;33m Cargando por favor Espere!!\e[0m"
				msfconsole -q -x "use auxiliary/gather/shodan_search;\
				set QUERY "webcamxp";\
				set SHODAN_APIKEY $shodan;\
				run"
	menu
	echo -n -e "\e[0;37m	Para ingresar otro token selecciona (\e[0m \e[1;31ms\e[0m \e[0;37mo\e[0m\e[1;31m n\e[0m  \e[0;37m) para salir :\e[0m"
	read token
	
	$token 
}
function n {
	limpiar_pantalla
	echo -e "\e[1;31m[*]\e[0m\e[0;37m Saliendo del script\e[0m"
        sudo service postgresql stop
        sleep 2s 
        limpiar_pantalla
        exit 0

}
function menu {
limpiar_pantalla
	echo -e "\n"
	echo -e "\e[1;33m         ███████╗██╗  ██╗ ██████╗ ██████╗  █████╗ ███╗   ██╗     ██████╗ █████╗ ███╗   ███╗
         ██╔════╝██║  ██║██╔═══██╗██╔══██╗██╔══██╗████╗  ██║    ██╔════╝██╔══██╗████╗ ████║
         ███████╗███████║██║   ██║██║  ██║███████║██╔██╗ ██║    ██║     ███████║██╔████╔██║
         ╚════██║██╔══██║██║   ██║██║  ██║██╔══██║██║╚██╗██║    ██║     ██╔══██║██║╚██╔╝██║
         ███████║██║  ██║╚██████╔╝██████╔╝██║  ██║██║ ╚████║    ╚██████╗██║  ██║██║ ╚═╝ ██║
         ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝     ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝
         \e[0m"   
	echo -e "\e[1;33m         ==========================================================================\e[0m\n"
	echo -e "\e[1;34m           Derechos reservados de autor = \e[0m\e[1;31mCripton666(Jaime Manquel)\e[0m"
	echo -e "\e[1;34m           Página Web                   = \e[0m\e[1;31mhttps://cripton6661989.wixsite.com\e[0m"
	echo -e "\e[1;34m           Página de Facebook           = \e[0m\e[1;31mCripton666\e[0m"
	echo -e "\e[1;34m           Página Github                = \e[0m\e[1;31mhttps://github.com/cripton666\e[0m\n"
	echo -e "\e[1;33m         ==========================================================================\e[0m"
}
menu
sleep 2s 
echo -n -e "\e[0;37m           Introducir el token de shodan :\e[0m"
read shodan
limpiar_pantalla
menu
sleep 2s 
echo -e "\e[1;31m              [*]\e[0m\e[1;33m Iniciando servicios\e[0m\n"
sudo service postgresql start
sleep 2s 
echo -e "\e[1;31m              [*]\e[0m\e[1;33m postgresql activando\e[0m\n"
sleep 2s 
echo -e "\e[1;31m              [*]\e[0m\e[1;33m Establecido con exito\e[0m"
sleep 3s
limpiar_pantalla
menu
echo -e "\e[1;31m              [*]\e[0m\e[1;33mConectando a Metasploit-framework\e[0m"
sleep 2s 
limpiar_pantalla 
menu
echo -e "\e[1;31m              [*]\e[0m\e[1;33m Cargando por favor Espere!!\e[0m"
                                msfconsole -q -x "use auxiliary/gather/shodan_search;\
				set QUERY "webcamxp";\
				set SHODAN_APIKEY $shodan;\
				run"
				limpiar_pantalla 
				menu 
echo -n -e "\e[0;37m		Para ingresar otro token selecciona (\e[0m \e[1;31ms\e[0m \e[0;37mo\e[0m\e[1;31m n\e[0m  \e[0;37m) para salir :\e[0m"
read token
$token

