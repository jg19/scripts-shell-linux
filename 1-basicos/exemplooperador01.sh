#!/bin/bash
# Descrição: exemplo operador &&

if [ $USER = gustavo ] && [ -w $HOME/.bashrc ]
then
echo "O usuário $USER tem permissão para alterar o arquivo bashrc"
else
echo "O usuário gustavo não tem permissão para alterar o arquivo bashrc neste momento"
fi
