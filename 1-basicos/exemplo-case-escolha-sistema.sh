#!/bin/bash
# Descrição: exemplo simples de case

echo "Qual é o melhor sistema operacional?"
echo "Digite 1 para Windows"
echo "Digite 2 para Mac Os"
echo "Digite 3 para Linux"
read sistema
case $sistema in
	1) echo "Sabe de nada inocente!";;
	2) echo "Tem certeza disso? Não é melhor pedir ajuda as placas?";;
	3) echo "Tá por dentro hein!!!";;
	*) echo "Você digitou uma opção inválida!";;
esac
