#!/bin/bash
# Descrição: exemplo simples de sorteio

# Solicitando ao usuário número de participantes
echo "Digite o número de participantes do sorteio:"
read participantes

# Solicitando ao usuário número de sorteados
echo "Digite o número de sorteados:"
read sorteados

# Gerando total de concorrentes com Seq
# junto e o número indicado de participantes
seq 1 $participantes > /tmp/concorrentes

# A opção "-r" do sort serve para gerar uma
# lista randâmica
sort -R /tmp/concorrentes > /tmp/sorteio

# Pegando apenas o número de sorteados
# no início da lista com o comando head
head -n $sorteados /tmp/sorteio > /tmp/resultado

# Informando ao usuário o resultado do sorteio
echo "E o resultado é:"
# Dormindo 3 segundos para suspense...
sleep 3
	for i in $sorteados
	do
	echo "Resultado:"
	head -n $i /tmp/resultado
	done

# Neste script podemos ver:
# - Uso dos comandos sort, seq e head
