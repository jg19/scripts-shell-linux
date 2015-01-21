#!/bin/bash
# Descrição: exemplo de zenity entry

curso=$(zenity --entry \
	--title "Cursos Logicus" \
	--text "Escolha o seu curso:" \
	Linux Servidores Segurança LibreOffice Programação)
echo $curso
