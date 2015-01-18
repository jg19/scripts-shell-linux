#!/bin/bash
# Descrição: exemplo de read com tempo e variável vazia

numero=""
echo "Digite um número se quiser. Você tem 5 segundos..."
read -t5 numero
if [ -z $numero ]; then
echo "Você não digitou nada"
else
echo "Você digitou $numero"
fi
