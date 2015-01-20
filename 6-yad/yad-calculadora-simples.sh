#!/bin/bash
# yad-calculadora-simples.sh

while true
do
ESCOLHA=$(yad --title "Calculadora simples com Yad" \
	--width=350 --form  \
	--field "Primeiro valor:":NUM \
	--field "Segundo valor:":NUM \
	--field "Somar":FBTN \
	--field "Subtrair":FBTN \
	--field "Dividir":FBTN \
	--field "Multiplicar":FBTN \
	"echo 'valor1'" \
	"echo 'valor2'" \
	"echo 'Somar'" \
	"echo 'Subtrair'" \
	"echo 'Dividir'" \
	"echo 'Multiplicar'" \
	--button="gtk-close:1" \
	--button="gtk-ok:0")

SAIDA=$?

if [[ "$SAIDA" = "1" ]]; then
exit 0
fi

OPERACAO=$(echo $ESCOLHA | tr '|' ' ' | awk '{print $1}')
VALOR1=$(echo $ESCOLHA | tr '|' ' ' | awk '{print $2}')
VALOR2=$(echo $ESCOLHA | tr '|' ' ' | awk '{print $3}')

case $OPERACAO in
	Somar)
	RESPOSTA=$(echo "scale=1; $VALOR1+$VALOR2" | tr ',' '.' | bc);;
	
	Subtrair)
	RESPOSTA=$(echo "scale=1; $VALOR1-$VALOR2" | tr ',' '.' | bc);;
	
	Dividir)
	RESPOSTA=$(echo "scale=1; $VALOR1/$VALOR2" | tr ',' '.' | bc);;
	
	Multiplicar)
	RESPOSTA=$(echo "scale=1; $VALOR1*$VALOR2" | tr ',' '.' | bc);;
	
	*)
	echo "Sem operação";;
esac

yad --title "Calculadora" --text="A resposta é $RESPOSTA" --image=dialog-information
done
