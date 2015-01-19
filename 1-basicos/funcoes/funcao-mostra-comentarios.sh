#!/bin/bash
# Descrição: este script mostra os comentários de um arquivo

# Função para mostrar os comentários
MostraComentarios () {
egrep "^#" $caminho
}

echo "Digite o caminho do arquivo que deseja mostrar os comentários:"
# Guardando o caminho em uma variável
read caminho
# Invocando função para mostrar os comentários
MostraComentarios

# Neste script podemos ver:
# - Uso de função
# - Uso do egrep no script
# - uso do read
