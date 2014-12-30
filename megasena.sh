#!/bin/bash
# Autor: Gustavo S. de Lima
# Email: ghtp@gmail.com
# Descrição: Gera lista dos números que já caíram na megasena de forma ordenada

wget http://www1.caixa.gov.br/loterias/_arquivos/loterias/D_megase.zip
unzip D_megase.zip && cat D_MEGA.HTM | grep -E -a -A 6 '[0-9]{2}/[0-9]{2}/[0-9]{4}' \
| sed 's/<td>// ; s/<\/td>// ; s/--//' \
| grep -E '[0-9]{2}' | grep -vE '[0-9]{2}\/[0-9]{2}\/[0-9]{4}' \
| sed 's/.*>//' | sort | uniq -c | sort
