#!/bin/bash
# Descrição: exemplo de read com tempo

echo "Pense rápido. Quanto é 49 x 36?"
# Read com opção "-t", para determinar tempo
if read -t 3 resposta
	then
	echo "Sua resposta foi $resposta. Será que acertou?"
	else
	echo "Demorou demais..."
fi

# Neste script podemos ver:
# - Read com opção
