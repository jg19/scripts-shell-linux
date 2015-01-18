#!/bin/bash
# Descrição: exemplo de notify-send

# Solicitando o usuário digitar um título
echo "Digite um título para a sua mensagem:"
# Capturando resposta na variável "titulo"
read titulo
# Solicitando nova variável
echo "Digite a mensagem:"
read mensagem
echo "Sua mensagem deverá aparecer na sua tela em 3 segundos..."
# Aguardando 3 segundos
sleep 3
# Enviando mensagem via notify-send
notify-send "$titulo" "$mensagem"

# Neste script podemos ver:
# - Uso do notify-send com variáveis
