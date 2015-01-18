#!/bin/bash
# Descrição: exemplo simples de read

echo "Digite um número maior que 9:"
read numero
if (($numero > 9)); then
echo "correto!"
else
echo "errado!"
fi

