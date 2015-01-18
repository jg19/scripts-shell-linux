#!/bin/bash

echo "Digite o nome do hostname da máquina:"
read resposta
	if [ $resposta == $HOSTNAME ]
		then
		echo correto!
		else
		echo errado!
	fi
