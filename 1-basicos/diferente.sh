#!/bin/bash
# Descrição: exemplo read e if com "!" para diferente

echo "Digite um número:"
read numero
if [ $numero != 0 ]; then
echo "Esse número não é zero"
else
echo "Esse número é zero"
fi

