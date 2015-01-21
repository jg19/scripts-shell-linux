#!/bin/bash

while true
do
SENHA="segredo"

tput setaf 7
tput setab 6
echo "Por favor, insira a senha: "
read TENTATIVA
if [ "$TENTATIVA" == "$SENHA" ]; then
echo "Parabéns, senha correta"
break
else
tput setaf 3
tput setab 1
echo "Errado! Deverá tentar novamente"
tput sgr0
sleep 3
fi
done
tput sgr0
