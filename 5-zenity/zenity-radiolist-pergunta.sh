#!/bin/bash
# Descrição: exemplo de zeniy com radiolist

escolha=$(zenity  --title "Cadastro de alunos Logicus" \
	--list  --text "Qual o seu interesse em aprender Linux?" \
	--radiolist  --column "Escolha" --column "Motivo" TRUE \
	Conhecimento FALSE Trabalho)

echo $escolha
