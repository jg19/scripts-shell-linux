#!/bin/bash

echo "Quantos arquivos deseja criar?"
read TOTAL
echo "Qual o nome dos arquivos?"
read NOME

for i in $(seq $TOTAL)
do
echo "Criando arquivo: $NOME$i"
touch $NOME$i
done
