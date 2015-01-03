#!/bin/bash
# Descrição: exemplo de calendário com zenity

until matricula=$(zenity --calendar \
	--title "No curso on line você inicia seus estudos quando quiser" \
	--text "Quer começar seu curso de Linux quando?" \
	--day $(date +%_d) \
	--month $(date +%_m) \
	--year $(date +%Y))
do
	:
done
echo $matricula
