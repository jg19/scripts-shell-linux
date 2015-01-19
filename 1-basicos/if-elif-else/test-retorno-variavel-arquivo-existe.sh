#!/bin/bash
# Descrição: exemplo simples de retorno

cat /tmp/teste.txt
if [ $? = 0 ]; then
echo "A saída foi $?"
echo "O arquivo teste.txt existe em /tmp"
else
echo "A saída foi $?"
echo "O arquivo teste.txt NÂO existe /tmp"
fi

