#!/bin/bash
# Descrição: confere se usuário é root ou não

if [ $UID != 0 ]; then
echo "Usuário não confirmado como root."
else
echo "Ok, usuário confirmado como root."
exit 0
fi
