#!/bin/bash

wget http://pt.wikinews.org/wiki/Página_principal && clear && \
echo "Últimas notícias da Wikipédia" && cat Página_principal | \
grep -o ' title=".*\"' | \
grep -A 20 "Últimas notícias" | \
grep -oE "title=".*"" | \
grep -v "Predefinição" | \
sed 's/title="//' | \
sed 's/"//' && rm Página_principal
