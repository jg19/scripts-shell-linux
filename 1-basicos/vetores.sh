#!/bin/bash
# Descrição: exemplo de vetores

echo "Qual o nome do seu pai?"
read pai
echo "Qual o nome da sua mãe?"
read mae
echo "Qual o nome do seu irmão?"
read irmao
familia=($pai $mae $irmao)
echo "Sua familia é ${familia[*]}"
echo "Seu pai é ${familia[0]}"
echo "Sua mãe é ${familia[1]}"
echo "Seu irmão é ${familia[2]}"
