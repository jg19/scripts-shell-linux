#!/bin/bash

while true
do
	echo "Digite um número maior que 10 (Pressione CRTL+C para sair):"
	read numero
		if [ "$numero" -gt "10" ]
			then
			echo "Correto"
		else
			echo "Errado"
		fi
done
