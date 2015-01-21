#!/bin/bash

USUARIOS=$(cat /etc/passwd | awk -F: '{print $1}')
for nome in $USUARIOS
do
echo "Há no sistema: " $nome
done
