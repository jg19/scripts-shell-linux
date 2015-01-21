#!/bin/bash
# Descrição: exemplo simples de case

# Mostrando ao usuário as opções
tput setaf 6
echo "Qual é o melhor sistema operacional?"
echo "Digite 1 para Windows"
echo "Digite 2 para Mac Os"
echo "Digite 3 para Linux"
tput sgr0

# Capturando resposta do usuário
# para a variável "sistema"
read SISTEMA

# O case propriamente dito
# tratando a resposta do usuário
tput setaf 4
case $SISTEMA in
	1) echo "Sabe de nada inocente!";;
	2) echo "Tem certeza disso? Não é melhor pedir ajuda as placas?";;
	3) echo "Tá por dentro hein!!!";;
	*) echo "Você digitou uma opção inválida!";;
esac
tput sgr0
