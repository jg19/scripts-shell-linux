#!/bin/bash
# Descrição: fornece saudação de acordo com o horário

# Pega apenas a hora do date
horario=(`date +%H`)

	# Se o horário for menor ou igual a 12
	if [[ "$horario" -le "12" ]]; then
	echo "Bom dia!"
	exit
	fi

	# Se o horário for igual ou maior que 19
	if [[ "$horario" -ge "19" ]]; then
	echo "Boa noite!"
	exit
	fi

echo "Boa tarde!"

# Neste script podemos ver:
# - Uso do comando date dentro de variável
