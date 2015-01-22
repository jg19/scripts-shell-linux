#!/bin/bash

ESCOLHA=$(yad --title "Auditor Debian" \
	--width 250 --height 300 --center \
	--text="Escolha uma ou mais opções para dar início a auditoria:" \
	--image /usr/share/icons/gnome/48x48/places/debian-swirl.png \
	--list --print-all \
	--multiple \
	--column="Objeto" \
	--column="Auditar:CHK" \
	--button "Manual" \
	--button "Créditos" \
	--button "Auditar" \
	--button "Sair" \
	Cron FALSE \
	TMP FALSE \
	Usuários FALSE \
	Pacotes FALSE \
	Rede FALSE \
	Log FALSE \
	Apache FALSE \
	Kernel FALSE)






