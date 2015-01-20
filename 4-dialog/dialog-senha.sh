#!/bin/bash
TITULO="Gerador de senhas"
SUBTITULO="Segurança acima de tudo!"

NUMERO=$(dialog --stdout --title "$TITULO" --backtitle "$SUBTITULO" \
	--inputbox "Digite o número de caracteres que deseja para sua senha:" 0 0)

tr -c -d '[:graph:]' < /dev/urandom | dd count=$NUMERO bs=1 2>/dev/null > /tmp/senhagerada

dialog --title "$TITULO" --backtitle "$SUBTITULO" \
	--msgbox "Senha gerada: $(cat /tmp/senhagerada)" 0 0

rm /tmp/senhagerada

