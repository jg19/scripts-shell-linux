#!/bin/bash
# Nome: getube.sh
# Autor: Gustavo S. de Lima
# Email: ghtp25@gmail.com
# Descrição: auxilia no download de video do youtube
# Dependências: Zenity, Youtube-dl

# Variável autor
Autor="Gustavo Soares de Lima"
# Variável para título
Titulo="Getube"
# Variavel contendo versão
Versao="0.1"

# Variável contendo ajuda no terminal
Ajuda="
$0 é um script que usa zenity e youtube-dl
para fazer downloads do youtube.

Uso no terminal: $0 [ -h | -V ]

	-h	Mostra a ajuda e sai
	-V 	Mostra a versão e sai
"
if test "$1" = "-h"
then
echo "$Ajuda"
exit 0
fi

if test "$1" = "-V"
then
echo "$Versao"
exit 0
fi

# Função que escolhe pasta para download
FuncaoLocalDownload () {
Local=$(zenity --title "$Titulo Em que pasta deseja salvar o download?" \
--file-selection --directory)
}

# Função para conferir se resultado do download foi positivo
FuncaoConfereDownload () {
if [[ "$?" = "0" ]]; then
zenity --title "$Titulo" \
--info --text="Download realizado com sucesso!"
notify-send "$Titulo" "O download foi concluído"
else
zenity --title "$Titulo" \
--error --text="Ops :( Falha no download!"
notify-send "O que houve?" "Alguma coisa aconteceu, pois um erro apareceu!"
fi
}

while :; do
# Variável que oferece ao usuário duas opções de download
menu=$(zenity --title "$Titulo" \
--list --text "Baixar video do youtube como?" \
--radiolist  --column "Opção" --column "Descrição" TRUE "video" FALSE "mp3" \
FALSE "créditos" FALSE "sair")

# Case para tratamento da escolha do usuário
case $menu in

	video) video=$(zenity --title "$Titulo" \
	--entry --text="Insira aqui o link do video do youtube que deseja baixar:");
	FuncaoLocalDownload;
	cd $Local;
	youtube-dl $video;
	FuncaoConfereDownload;;

	mp3) mp3=$(zenity --title "$Titulo" \
	--entry --text="Insira aqui o link do video que deseja baixar como mp3:");
	FuncaoLocalDownload;
	cd $Local;
	youtube-dl -t --extract-audio --audio-format mp3 $mp3;
	FuncaoConfereDownload;;

	créditos) zenity --title "$Titulo" \
	--info --text="$Titulo $Versao Autor: $Autor";;

	sair) exit 0;;
esac
done

# Fim
