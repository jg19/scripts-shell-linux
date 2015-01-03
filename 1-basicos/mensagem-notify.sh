#!/bin/bash
# Descrição: exemplo de notify-send

echo "Digite um título para a sua mensagem:"
read titulo
echo "Digite a mensagem:"
read mensagem
echo "Sua mensagem deverá aparecer na sua tela em 3 segundos..."
sleep 3
notify-send "$titulo" "$mensagem"
