#!/usr/bin/env bash

# variaveis
r='\e[31m'
g='\e[32m'
b='\e[34m'
f='\e[m'
s='\e[35m>>>\e[m'

clear
echo -e "${s} ${b}Instalando o openssh${f}"
sleep 2s
sudo pacman -S openssh --noconfirm

echo
echo -e "${s} ${b}Abrindo a porta 22${f}"
sleep 2s
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config

echo
echo -e "${s} ${b}Reiniciando o serviço sshd${f}"
sleep 2s
sudo systemctl restart sshd

echo
echo -e "${s} ${b}Mostrando o ip${f}"

echo
echo -e "${s} ${b}Copie o ip para fazer a conexão entre as máquinas${f}"
ip -br -c a

echo
echo -e "${s} ${g}Para se conectar digite${f} ${r}[${f}${b}ssh usuario@IP${f}${r}]${f}"

