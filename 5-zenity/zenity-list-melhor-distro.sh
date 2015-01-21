#!/bin/bash
# Descrição: exemplo de lista com zenity

distros=$(zenity --list \
	--title "Melhores distros" \
	--text "Quais as melhores distribuições Linux em sua opinião?" \
	--height 300 \
	--multiple \
	--column "Distribuições:" \
	"Slackware" \
	"Debian" \
	"Red Hat" \
	"Ubuntu" \
	"LFS")

echo $distros
