# Colors
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

function mkt() {
 mkdir nmap content scripts tmp exploits  # creamos la estructura del directorio para trabajar
}


function extraPorts() {  
  echo -e "\n${yellowColour}[*] Extracting information...${endColour}\n"
  
  # buscamos la ip en el archivo allPorts y retornamos un valor unico, sin ip repetidas
  ip_address=$(cat allPorts | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u) 
  # buscamos puertos que estan abiertos y sustituimos los espacion por comas
  open_ports=$(cat allPorts | grep -oP '\d{1,5}/open' | awk '{print $1}' FS="/" | xargs | tr '  ' ',')
  
  echo -e "\t${blueColour}[*] IP Address: ${endColour}${grayColour}$ip_address${endColour}"
  echo -e "\t${blueColour}[*] Open ports: ${endColour}${grayColour}$open_ports${endColour}\n" 

  # ponemos los puertos en el portapapeles para seguir trabajando 
  echo $open_ports| tr -d '\n' | xclip -sel clip

  echo -e "${yellowColour}[*] Ports has been copied to clipboard${endColour}\n"
}
