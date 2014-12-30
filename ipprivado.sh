#!/bin/bash
# Descrição: captura ip privado e mostra ao usuário

# Função de captura de IP privado
EnderecoIP ()
{
	IP+=($( compgen -W "$( PATH="$PATH:/sbin" LC_ALL=C ifconfig -a | sed -ne 's/.*addr:\([^[:space:]]*\).*/\1/p' \
	-ne 's/.*inet[[:space:]]\{1,\}\([^[:space:]]*\).*/\1/p' )" -- "$cur" ))
}

# Chamando a função propriamente dita
EnderecoIP

# Imprimindo o resultado da função na tela
echo "$USER, seu IP privado neste momento é: $IP"

# FIM
