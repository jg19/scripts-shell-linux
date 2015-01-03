#!/bin/bash
# Descrição: brincadeira de tabuada usando RANDOM e read com tempo

while true
do
valor1=${RANDOM:1:1}
valor2=${RANDOM:1:1}
echo "Quanto é $valor1 * $valor2?"
read -t 5
echo "O resultado seria $[valor1*valor2]"
sleep 5
done
