#!/bin/bash
# Calcapost.sh
# Descrição: calcular do total de páginas de apostilas
# Dependência: pdftk
# Autor: Gustavo S. de Lima
# Email: ghtp25@gmail.com

# Limpando a tela
clear
# Informa na tela que irá descompactar as apostilas
dialog --title "Descompactando apostilas..." \
--backtitle "Calculadora de Apostila" \
--infobox "Descompactando apostilas na pasta local, aguarde um momento" 0 0
sleep 2

# Descompacta as apostilas na pasta local
unzip Curso* > /dev/null
sleep 2

# Cria uma lista com os arquivos pdf encontrados
dialog --title "Criando lista de apostilas encontradas..." \
--backtitle "Calculadora de Apostila" \
--infobox "Criando um arquivo temporário para listar apostilas encontradas" 0 0
sleep 2

# Usa o find para procurar por arquivos "pdf"
# e enviá-los para uma lista de arquivos pdf
find -name *.pdf > ListaDeArquivosPdf

# Tratamento condicional para contabilizar
# total de páginas das apostilas
	while read Linha;
	do
		echo $Linha | sed 's/.*\/aula_//' | sed 's/_NP.*//' > NomeApostila 
		dialog --title "Contabilizando apostilas" \
		--backtitle "Calculadora de Apostila" \
		--infobox "Calculando o total de páginas da apostila: `cat NomeApostila`" 4 50
		rm NomeApostila
		# Usa o "pdftk" para contar quantas páginas tem nos arquivos pdf
		pdftk "$Linha" burst > /dev/null
		cat doc_data.txt | grep NumberOfPages | sed 's/.*: //' >> TotalDePaginas
		# Limpando lixo gerado pelo pdftk
		rm doc*
		rm pg*
	done < ListaDeArquivosPdf

dialog --title "Fazendo os cálculos necessários para o relatório..." \
--backtitle "Calculadora de Apostila" \
--infobox "Iremos agora cruzar dados para emissão do relatório de porcentagem" 0 0
sleep 2

cat ListaDeArquivosPdf | sed 's/.*\/aula_//' | sed 's/\.pdf//' > ListaDeArquivosPdf2
rm ListaDeArquivosPdf
mv ListaDeArquivosPdf2 ListaDeArquivosPdf

grep -Eo 'NP[0-9]{1,3}' ListaDeArquivosPdf > NumeroDePaginasParaPorcentagem
sed 's/NP.*//' ListaDeArquivosPdf > ListaDeArquivosPdf2
rm ListaDeArquivosPdf
mv ListaDeArquivosPdf2 ListaDeArquivosPdf

sed 's/NP//' NumeroDePaginasParaPorcentagem > NumeroDePaginasParaPorcentagem2
rm NumeroDePaginasParaPorcentagem
mv NumeroDePaginasParaPorcentagem2 NumeroDePaginasParaPorcentagem

# Usando a dependência percents.sh para realizar cálculo de porcentagem
OIFS=$IFS
IFS=" "
while read campo1 campo2;
do
./percents.sh --taxa $campo1 $campo2 >> Porcentagem
done < <(paste -d " " TotalDePaginas NumeroDePaginasParaPorcentagem)
IFS=$OIFS

paste Porcentagem ListaDeArquivosPdf > Resultado

sort -n Resultado > Resultado2
rm Resultado
mv Resultado2 Resultado

TotalFeito=`bc <<< "$(tr '\n' '+' < TotalDePaginas | sed 's/+$//')"`
TotalParaFazer=`bc <<< "$(tr '\n' '+' < NumeroDePaginasParaPorcentagem | sed 's/+$//')"`

PorCentoConcluido=`./percents.sh --taxa $TotalFeito $TotalParaFazer`

dialog --title "Relatório parcial" \
--backtitle "Calculadora de Apostila" \
--msgbox "O total de páginas escritas até o momento é de $TotalFeito, e o total a se fazer é $TotalParaFazer, ou seja, foi concluído até o momento $PorCentoConcluido % do trabalho" 0 0

# Mostrando relatório na tela para usuário
dialog --title "Relatório de Porcentagem por apostilas" \
--backtitle "Calculadora de Apostila" \
--textbox Resultado 0 0

paste ListaDeArquivosPdf NumeroDePaginasParaPorcentagem > TabelaDePreco

# Deletando arquivos temporário
rm ListaDeArquivosPdf
rm NumeroDePaginasParaPorcentagem
rm Porcentagem
rm TotalDePaginas
rm Resultado
rm -fr Cursos_Logicus

# Fim do script
