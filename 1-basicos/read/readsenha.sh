#!/bin/bash
# Descrição: exemplo read escondendo resposta

echo "Digite a senha:"
read -s senha
echo "A senha digitada foi: $senha"

# Neste script podemos ver:
# - Uso do read com opção "-s" para captura silenciosa
