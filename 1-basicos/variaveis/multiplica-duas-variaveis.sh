#!/bin/bash
# Descrição: multipla dois valores
# visando auxiliar o entendo das variáveis

# Solicitando para o usuário
# valor de variáveis
echo "Vamos calcular x * y?"
echo "Diga um valor para x:"
read x
echo "Diga um valor para y:"
read y
# Calculando variáveis dentro do echo
echo "x*y = $x*$y = $[x*y]"

# Neste script podemos ver
# - Uso de cálculo com variáveis no Shell
