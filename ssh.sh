#!/usr/bin/env bash

# variaveis e password root/user
ciano='\033[0;36m'
verde='\033[0;32m'
vermelho='\033[0;31m'
amarelo='\033[0;32m'
fim='\033[0m'
seta='\e[32;1m-->\e[m'

clear
echo -e "${seta} ${ciano}Instalando o openssh${fim}"
sleep 2s
sudo pacman -S openssh --noconfirm
clear

echo -e "${seta} ${ciano}Abrindo a porta 22${fim}"
sleep 2s
sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
clear

echo -e "${seta} ${ciano}Reiniciando o serviço sshd${fim}"
sleep 2s
systemctl restart sshd
clear

echo -e "${seta} ${ciano}Mostrando o ip${fim}"
echo
echo -e "${seta} ${ciano}Copie o ip para fazer a conexão entre as máquinas${fim}"
ip address show
read
clear

