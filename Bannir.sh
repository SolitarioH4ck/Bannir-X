#!/system/bash
#code by SolitarioH4ck

#COLORES
Z='\033[1;34m'
G='\033[1;90m'
W='\033[1;39m'
R='\033[1;91m'

Bannir(){
clear;sleep 1
echo -e ${Z}'
______                      _____
___  /_______ _________________(_)_______      ____  __
__  __ \  __ `/_  __ \_  __ \_  /__  ___/________  |/_/
_  /_/ / /_/ /_  / / /  / / /  / _  /   _/_____/_>  <
/_.___/\__,_/ /_/ /_//_/ /_//_/  /_/           /_/|_|\n'
echo -e "${Z}[${W}+${Z}]${G} Creador: ${W}SolitarioH4ck"
echo -e "${Z}[${W}+${Z}]${G} Telegram: ${W}t.me/SolitarioH4ck"

echo -e "
${Z}┌════════════════════════════┐
${Z}┃ [${G}1${Z}]${W} Abrir num en wa.me     ${Z}┃
${Z}┃ [${G}2${Z}]${W} Desactivar un numero   ${Z}┃
${Z}┃ [${G}3${Z}]${W} Desbanear un numero    ${Z}┃
${Z}┃ [${G}4${Z}]${W} Sacar del -1 un numero ${Z}┃
${Z}┃ [${G}5${Z}]${W} Contactar creador      ${Z}┃
${Z}┃                            ┃
${Z}┃ [${G}00${Z}]${W} Salir                 ${Z}┃
${Z}└════════════════════════════┘
"
echo -ne "${G}>>${W} "
read -r opcion
echo ' '

if [ -z ${opcion} ];then
echo "No Haz Elegido ninguna opción."
exit
fi

case $opcion in
1) echo -ne "${Z}Introduce el Numero:${W} "
   read -r num
   xdg-open https://wa.me/$num
   Bannir
;;
2) clear
   echo -e "          ${Z}#___________${W}Aviso${Z}__________#\n"
   echo -e "${W}Despues de enviar Este correo no enviaras otro mas solo Esperarás la respuesta de Support\n"
   echo -e "${G}IMPORTANTE: ${W}Escribir el Numero sin espacios."
   echo ""
   echo -ne "${Z}Introduce el Numero:${W} "
   read -r numero
   am start -a android.intent.action.SENDTO -d "mailto:support@support.com?&subject=Desactivar mi cuenta&body=Por favor, desactiven mi cuenta de WhatsApp de inmediato debido al robo de mi teléfono móvil Mi número de teléfono asociado con la cuenta robada es $numero He intentado solicitar la desactivacion de mi cuenta anteriormente, pero no he recibido respuesta. Hay información personal en mi cuenta que necesito proteger y me gustaría que mi cuenta sea desactivada lo antes posible." com.google.android.gm  > /dev/null 2>&1
   Bannir
;;
3) echo -e -n  "${Z}Número:${W} "
   read -r numero
   am start -a android.intent.action.SENDTO -d "mailto:support@support.com?&subject=Activen mi cuenta&body=Hola buenas noches, vengo a reclamar un error de suspensión a mi cuenta Hace aproximadamente un par de horas, estaba tranquilamente hablando con amigos cuando me llega un mensaje diciendo que mi WhatsApp fue registado en otro telefono; posterior a eso cuando intento ingresar me dice que mi cuenta Ha sido suspendida, por favor me ayuden a recuperar mi cuenta Yo nunca me e metido en nada malo o asido un mal Amigo que me iso eso. mi numero es:($numero)" com.google.android.gm  > /dev/null  2>&1 
   Bannir
;;
4) clear
   echo -e "          ${Z}#___________${W}Aviso${Z}__________#\n"
   echo -e "${W}Enviaras el correo tres veces seguidas para que pueda Inmunisarse\n"
   echo -e "${G}IMPORTANTE: ${W}Escribir el Numero sin espacios.\n"
   echo -ne "${Z}Introduce el Numero:${W} "
   read -r numero
   am start -a android.intent.action.SENDTO -d "mailto:support@support.com?&subject=Desactiven mi cuenta&body=Telefono robado/extraviado desactiven mi numero $numero" com.google.android.gm  > /dev/null  2>&1
   Bannir
;;
5) xdg-open "https://wa.me/+50487870488?text=Hola,%20¿cómo%20estás%20SolitarioH4ck"
   Bannir
;;
00) echo "Adios kuakersito.."
    exit
;;
*) echo -e "${Z}┌═════════════════════┐"
   echo -e "${Z}┃ ${W}¡OPCIÓN INCORRECTA! ${Z}┃"
   echo -e "${Z}└═════════════════════┘"
   sleep 1
   Bannir
;;
esac
}
Bannir
