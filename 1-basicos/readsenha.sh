#!/bin/bash
# Descrição: exemplo read escondendo resposta

echo "Bem vindo ao Banco da Jamaica"
echo "Qual seu nome?"
read nome
echo "Qual sua senha?"
read -s senha
echo "Olá $nome, você acessou com a senha $senha"
