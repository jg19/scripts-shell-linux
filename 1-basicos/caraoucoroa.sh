#!/bin/bash
# Descrição: usa variável RANDOM para mostrar cara ou coroa

# Estabelece uma variável chamada "MOEDA"
# onde seu conteúdo é a outra variável, neste caso $RANDOM
MOEDA="$((RANDOM %2))"
if [[ $MOEDA -eq 0 ]]; then
echo "Resultado: cara"
else
echo "Resultado: coroa"
fi

# Neste script podemos ver as seguintes questões
# - O uso de uma variável dentro de outra
# - A variável $RANDOM
# - O usdo de if, else para tratamento do resultado
