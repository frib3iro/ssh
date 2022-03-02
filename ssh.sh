#!/usr/bin/env bash

# variaveis e password root/user
C='\033[0;36m'
G='\033[0;32m'
R='\033[0;31m'
Y='\033[0;32m'
F='\033[0m'
S='\e[32;1m[+]\e[m'

clear
echo -e "${S} ${C}Instalando o openssh${F}"
sleep 2s
sudo pacman -S openssh --noconfirm
clear

echo -e "${S} ${C}Abrindo a porta 22${F}"
sleep 2s
sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
clear

echo -e "${S} ${C}Reiniciando o serviço sshd${F}"
sleep 2s
systemctl restart sshd
clear

echo -e "${S} ${C}Mostrando o ip${F}"
echo
echo -e "${S} ${C}Copie o ip para fazer a conexão entre as máquinas${F}"
ip address show

echo -e "${S} ${G}Para se conectar digite${F} ${R}[${F}${C}ssh usuario@IP${F}${R}]${F}"

