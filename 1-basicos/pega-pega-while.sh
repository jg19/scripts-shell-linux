#!/bin/bash
# Descrição: exemplo de pega-pega com while

n=1
while test "$n" -le 10
do
echo "Número $n"
n=$[n+1]
sleep 1
done
echo "Pronto, lá vou eu!"
