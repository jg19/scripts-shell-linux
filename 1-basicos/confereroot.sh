#!/bin/bash
# Descrição: confere se usuário é root ou não

# Testa se a saída da variável $UID é 0 ou não
if [ $UID != 0 ]; then
echo "Usuário não confirmado como root."
else
echo "Ok, usuário confirmado como root."
exit 0
fi

# Neste script podemos ver:
# - O uso da variável $UID
# - O uso de if, else no tratamento do resultado
