#!/bin/bash

wget http://pt.wikinews.org/wiki/Página_principal
clear
tput setaf 4
echo " *** Últimas notícias da Wikipédia *** "
tput sgr0
cat Página_principal | \
grep -o ' title=".*\"' | \
grep -A 20 "Últimas notícias" | \
grep -oE "title=".*"" | \
grep -v "Predefinição" | \
sed 's/title="//' | \
sed 's/"//' 
tput setaf 4
echo " *** Últimas notícias da Wikipédia *** "
tput sgr0
rm Página_principal
