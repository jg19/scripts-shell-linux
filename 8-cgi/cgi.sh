#!/bin/bash
  
echo "content-type: text/html"
echo
echo "<html> <head> <title> Exemplo de Script CGI </title> </head> <body>"

echo "</br>"
echo "Usuario: "
echo "</br>"
whoami
echo "</br>"

echo "</br>"
echo "Nome do host: "
echo "</br>"
hostname
echo "</br>"

echo "</br>"
echo "Tempo que a maquina esta ligada: "
echo "</br>"
uptime
echo "</br>"

echo "</br>"
echo "Verificando algumas variaveis: "
echo "</br>"
set
echo "</br>"


echo "</body>"
echo "</html>"
