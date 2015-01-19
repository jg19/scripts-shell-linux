#!/bin/bash
# limpatmp.sh
# Descrição: apaga arquivos mais velhos que 30 dias do /tmp

LimpaTmp () {
# Mudando para o diretório /tmp
cd /tmp
# Procurando arquivos mais velhos que
# 30 dias e deletando-os
find . -type f -mtime +30 -delete
}

LimpaTmp

# Neste script podemos ver:
# - Uso do cd dentro do script
# - Uso do find dentro do script
