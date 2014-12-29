#!/bin/bash
# Autor: Gustavo S. de Lima
# Email: ghtp25@gmail.com
# Descrição: exemplo simples de sorteio

echo "Digite o número de participantes do sorteio:"
read participantes

echo "Digite o número de sorteados:"
read sorteados

seq 1 $participantes > /tmp/concorrentes
sort -R /tmp/concorrentes > /tmp/sorteio
head -n $sorteados /tmp/sorteio > /tmp/resultado

echo "E o resultado é:"
sleep 3

for i in $sorteados
do
echo "Resultado:"
head -n $i /tmp/resultado
done
