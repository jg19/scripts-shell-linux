#!/bin/bash
# Autor: Gustavo S. de Lima
# Email: ghtp@gmail.com
# Descrição: Gera lista dos números que já caíram na megasena de forma ordenada

Ajuda="
Opções:

	--ajuda			Mostra esta ajuda e sai
	--alimenta		Alimenta a base de dados
	--limpa-base		Limpa base de dados presente
	--numeros-sorteados	Mostra de lista de números e quantas vezes sorteados
	--sorteio-com-datas	Mostra datas dos sorteios com números sorteados
	--sorteio-por-data	Mostra o sorteio de uma data específica
	--sorteio-por-mes	Mostra o sorteio por mês
"

funcao_alimenta_base () {

wget http://www1.caixa.gov.br/loterias/_arquivos/loterias/D_megase.zip
unzip D_megase.zip

}

funcao_limpa_base () {
rm D_MEGA.HTM D_megase.zip T2.GIF
}

funcao_lista_quantidade_sorteio () {

cat D_MEGA.HTM | grep -E -a -A 6 '[0-9]{2}/[0-9]{2}/[0-9]{4}' \
| sed 's/<td>// ; s/<\/td>// ; s/--//' \
| grep -E '[0-9]{2}' | grep -vE '[0-9]{2}\/[0-9]{2}\/[0-9]{4}' \
| sed 's/.*>//' | sort | uniq -c | sort

}

funcao_sorteio_com_datas () {

cat D_MEGA.HTM | grep -E -a -A 6 '[0-9]{2}/[0-9]{2}/[0-9]{4}' \
| sed 's/<td>// ; s/<\/td>// ; s/--//' \
| grep -E '[0-9]{2}' | sed 's/.*>//'

}

funcao_sorteio_por_data () {

echo "Digite a data do sorteio. Exemplo: 24/12/2014"
read data

echo "Os números são:"
cat D_MEGA.HTM | grep -E -a -A 6 '[0-9]{2}/[0-9]{2}/[0-9]{4}' \
| sed 's/<td>// ; s/<\/td>// ; s/--//' \
| grep -E '[0-9]{2}' | sed 's/.*>//' | grep -A 6 $data

}

funcao_sorteio_por_mes () {

echo "Digite o mês por número decimal, exemplo 04 para abril"
read mes

cat D_MEGA.HTM | grep -E -a -A 6 '[0-9]{2}/[0-9]{2}/[0-9]{4}' \
| sed 's/<td>// ; s/<\/td>// ; s/--//' \
| grep -E '[0-9]{2}' | sed 's/.*>//' \
| grep -E -A 6 '[0-9]{2}\/'$mes'\/[0-9]{4}'

}

if [[ "$1" = "--ajuda" ]]; then
echo "$Ajuda"
exit
fi

if [[ "$1" = "--alimenta" ]]; then
funcao_alimenta_base
exit
fi

if [[ "$1" = "--numeros-sorteados" ]]; then
funcao_lista_quantidade_sorteio
exit
fi

if [[ "$1" = "--limpa-base" ]]; then
funcao_limpa_base
exit
fi

if [[ "$1" = "--sorteio-com-datas" ]]; then
funcao_sorteio_com_datas
exit
fi

if [[ "$1" = "--sorteio-por-data" ]]; then
funcao_sorteio_por_data
exit
fi

if [[ "$1" = "--sorteio-por-mes" ]]; then
funcao_sorteio_por_mes
exit
fi
