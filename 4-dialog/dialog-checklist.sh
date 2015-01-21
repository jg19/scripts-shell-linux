#!/bin/bash
# Descrição: exemplo de dialog com checklist

dialog --title "Instalador de Servidor Logicus" \
	--checklist "Marque os serviços" 0 0 0 \
	apache "Instalar Apache" on \
	mysql "Instalar MySQL" on \
	php "Instalar PHP" on \
	phpmyadmin "Instalar PHPMyAdmin" off \
	java "Instalar Java" off
