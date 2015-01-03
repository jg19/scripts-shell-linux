#!/bin/bash
# Descrição: exemplo simples de case

# Mostrando ao usuário as opções
echo "Qual é o melhor sistema operacional?"
echo "Digite 1 para Windows"
echo "Digite 2 para Mac Os"
echo "Digite 3 para Linux"
# Capturando resposta do usuário
# para a variável "sistema"
read sistema
# O case propriamente dito
# tratando a resposta do usuário
case $sistema in
	1) echo "Sabe de nada inocente!";;
	2) echo "Tem certeza disso? Não é melhor pedir ajuda as placas?";;
	3) echo "Tá por dentro hein!!!";;
	*) echo "Você digitou uma opção inválida!";;
esac
