#!/bin/bash
# Descrição: usa variável RANDOM para mostrar cara ou coroa

MOEDA="$((RANDOM %2))"
if [[ $MOEDA -eq 0 ]]; then
echo "Resultado: cara"
else
echo "Resultado: coroa"
fi
