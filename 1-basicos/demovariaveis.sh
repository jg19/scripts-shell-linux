#!/bin/bash
# Descrição: exemplo de variáveis especiais

# A cada echo é informada uma variável especial
echo "O nome deste script é $0"
echo "O PID deste script é $$"
echo "O total de argumentos utilizados foi $#"
echo "Todos os argumentos: $*"
echo "O primeiro argumento utilizado foi $1 e o segundo foi $2"
echo "E o status do comando anterior foi $?"

# Neste script vimos
# - Uso das variáveis especiais
