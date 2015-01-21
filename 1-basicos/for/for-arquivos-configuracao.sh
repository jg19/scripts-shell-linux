#!/bin/bash

for arquivo in /etc/*/*.conf
do
	tput setaf 4 
	echo -n "Arquivos de configuração: "
	tput sgr0
	tput setaf 3
	echo "$arquivo"
	tput sgr0
done

