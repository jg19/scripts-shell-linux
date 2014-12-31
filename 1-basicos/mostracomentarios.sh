#!/bin/bash
# Descrição: este script mostra os comentários de um arquivo

# Função
MostraComentarios () {
egrep "^#" $caminho
}

echo "Digite o caminho do arquivo que deseja mostrar os comentários:"
read caminho
MostraComentarios

