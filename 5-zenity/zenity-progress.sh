#!/bin/sh
# Descrição: exemplo zenity progress percentage

(
echo "10" ; sleep 1
echo "# Instalando Apache" ; sleep 1
echo "20" ; sleep 1
echo "# Configurando o Apache " ; sleep 1
echo "50" ; sleep 1
echo "Instalando o MySQL" ; sleep 1
echo "75" ; sleep 1
echo "# Configurando o MySQL" ; sleep 1
echo "100" ; sleep 1
) |
zenity --progress \
  --title="Instalador Web Server Logicus" \
  --text="Verificando estado do servidor..." \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Instalação cancelada."
fi
