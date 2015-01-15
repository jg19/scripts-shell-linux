#!/bin/bash
# Exemplo de cadastro feito com Yad
# Autor: Gustavo Soares de Lima

# Destaque para a simplicidade com que o 
# Yad trabalha com formulários

yad --title "Formulário de Cadastro feito em Shell" \
--width=400 \
--form --field "Nome:" --field "Digite uma senha:":H \
--field "Informe o número da sorte":NUM \
--field "Solteiro(a)":CHK \
--field "Casado(a)":CHK \
--field "Selecione uma foto":FL \
--field "Escolha a fonte de preferência":FN \
--field "Selecione sua data de nascimento":DT \
--field "Indique a média de kilómetros/hora que você costuma dirigir":SCL \
--field "Digite aqui uma frase que gosta":TXT
