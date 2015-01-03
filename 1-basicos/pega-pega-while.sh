#!/bin/bash
# Descrição: exemplo de pega-pega com while

# Fornecendo valor 1 para variável "n"
n=1
	# Enquanto a variável "n" for menor ou igual a 10
	while test "$n" -le 10
	do
		# Informando valor da variável
		echo "Número $n"
		# Somando +1 na variáveç
		n=$[n+1]
		# Dormindo 1 segundo	
		sleep 1
	done
	echo "Pronto, lá vou eu!"

# Neste script podemos ver:
# - Soma de variável
# - Uso do while
