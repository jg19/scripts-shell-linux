#!/bin/bash
# Descrição: eemplo de if com teste de igual a 0

echo "Digite o nome do usuário que deseja procurar:"
read nome
echo "Procurando $nome..."
who | grep $nome
	if [ $? -eq 0 ]; then
	echo "$nome encontrado, este usuário está logado"
	else
	echo "$nome não foi encontrado"
	fi

# Neste script podemos ver:
# - Uso dos comandos who e grep com pipe
# - Uso de if, else para tratar resultado
