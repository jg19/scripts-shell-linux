#!/bin/bash
# Descrição: exemplo operador &&

# Verificando se o conteúdo da variável $USER é "gustavo" e
# se o arquivo .bashrc possui permissão de escrita
if [ $USER = gustavo ] && [ -w $HOME/.bashrc ]
then
echo "Gustavo tem permissão para alterar o .bashrc"
else
echo "Ou o usuário $USER não é Gustavo, ou o arquivo .bashrc \
não possui permissão de escrita"
fi

# Neste script podemos ver:
# Uso do if, else para testar variável
# Uso do operador && (AND)
