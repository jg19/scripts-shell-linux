#!/bin/bash
# Descrição: exemplo read e if com "!" para diferente

# Solicita para o usuário digitar um número
echo "Digite um número:"
# Guarda o número em uma variável
read numero
if [ $numero != 0 ]; then
echo "Esse número não é zero"
else
echo "Esse número é zero"
fi

# Neste script vimos:
# - Uso do read para capturar variável
# - Uso de if, else para tratamento de resultado
