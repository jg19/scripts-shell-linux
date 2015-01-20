#!/bin/bash
# modo de uso: digite source mensagem-colorida.sh
#	       $ mensagem-colorida 'azul' esta mensagem é azul

declare -A arraycores

arraycores['vermelho']=1
arraycores['azul']=2
arraycores['amarelo']=3
arraycores['azul']=4
arraycores['rosa']=5

mensagem-colorida () {

	local codigocor=${arraycores[$1]}
	shift

	if [ $codigocor ]; then
		tput setaf $codigocor; \
		tput bold; \
		echo "$*"; \
		tput sgr0
	else
		echo "$*"
	fi
}
