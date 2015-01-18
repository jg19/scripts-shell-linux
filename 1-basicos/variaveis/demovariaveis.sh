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

# Para reforçar
# =============
# $0 fornece o nome do script
# $$ mostra o pid aberto
# $# fornece o total de argumentos fornecidos
# $* mostra todos os argumentos
# $1, $2, $3... mostra o argumento de acordo com a ordem
# $? fornece o statuso do comando anterior
