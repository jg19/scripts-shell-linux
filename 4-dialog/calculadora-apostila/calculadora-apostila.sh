#!/bin/bash
# Nome: calcapost.sh
# Calculadora de apostilas da Logicus
# Dependências: unzip, pdftk, dateutils
# Autor: Gustavo S. de Lima
# Email: ghtp25@gmail.com

# Variáveis
VERSAO="0.2"
TITULO="CALCULADORA DE APOSTILAS $VERSAO"
SUBTITULO="LOGICUS TECNOLOGIA DE INFORMAÇÃO E COMUNICAÇÃO"

# Função de Aviso
funcao_aviso () {

	dialog  --title "$TITULO" --backtitle "$SUBTITULO" \
		--msgbox "Olá. A Logicus utiliza este programa para tratar rotinas internas \
		que dificilmente lhe farão sentido. Em todo caso você poderá usar este programa \
		se o final dos arquivos a serem calculados for NPx, onde x é o número de \
		páginas que o arquivo deveria ter" 0 0

	funcao_menu

}

# Função Prepara
funcao_prepara () {

	DIRETORIO=$(dialog --stdout --title "$TITULO" --backtitle "$SUBTITULO" \
		--inputbox "Digite o caminho do diretório onde está o arquivo zipado. \
		Exemplo: /home/$USER/Downloads/" 0 0)

	ZIPADO=$(dialog --stdout --title "$TITULO" --backtitle "$SUBTITULO" \
	--fselect $DIRETORIO 0 0)

	mv $ZIPADO .
	unzip *.zip

	dialog --title "$TITULO" --backtitle "$SUBTITULO" \
		--infobox "Apostilas descompactadas, aguarde mais um momento \
		para que criemos as bases de dados que serão utilizadas \
		pelo programa..." 0 0

	# Cria lista de apostilas
	find Cursos_Logicus/ -name *.pdf > ListaDeApostilas.txt

	# Cria lista de Número de páginas escritas
	while read LINHA; 
	do pdftk $LINHA  dump_data \
	| grep NumberOfPages \
	| sed 's/.*: //' >> NumeroDePaginasEscritas.txt; 
	done < ListaDeApostilas.txt

	# Cria lista de nomes das apostilas
	cat ListaDeApostilas.txt \
	| sed 's/.*aula_//' \
	| sed 's/_NP.*//' >> ListaNomesApostilas.txt

	# Cria Lista de total de páginas para se escrever
	cat ListaDeApostilas.txt \
	| sed 's/.*aula_//' \
	| sed 's/.*NP//' \
	| sed 's/.pdf//' >> TotalParaSeEscrever.txt

	# Cria arquivo com lista "Apostila | Número de Páginas Feitas | Número de Páginas a se fazer"
	paste ListaNomesApostilas.txt \
	NumeroDePaginasEscritas.txt \
	TotalParaSeEscrever.txt >> ListaApostilaFeitoSeFazer.txt

	dialog --title "$TITULO" --backtitle "$SUBTITULO" \
		--msgbox "Arquivo descompactado com sucesso, base de dados criada!" 0 0

	funcao_menu

}

funcao_media () {

	TOTAL="0"
	while read LINHA; 
	do TOTAL=$(($TOTAL+$LINHA)); 
	echo $TOTAL > /dev/null; 
	done < NumeroDePaginasEscritas.txt
		
	HOJE=`date '+%Y-%m-%d'`
	INTERVALO=`ddiff 2013-01-31 $HOJE`

	MEDIA=$((($TOTAL/$INTERVALO)))

	TOTALPARAESCREVER="0"
	while read LINHA;
	do TOTALPARAESCREVER=$(($TOTALPARAESCREVER+$LINHA));
	echo $TOTALPARAESCREVER > /dev/null;
	done < TotalParaSeEscrever.txt

	DIASQUEFALTAM=$((($TOTALPARAESCREVER/$MEDIA)))

	PREVISAO=`date "+dia %d do mês %m do ano de %Y" -d "$DIASQUEFALTAM days"`

	dialog --title "$TITULO" --backtitle "$SUBTITULO" \
		--msgbox "O trabalho de escrita das apostilas já dura $INTERVALO dias \
		desde o seu início. Foram escritas $TOTAL páginas até o momento. Sua média \
		é de $MEDIA páginas escritas por dia. A previsão de conclusão do trabalho é \
		para $PREVISAO, ou seja, faltam $DIASQUEFALTAM dias, sendo que o total \
		para se escrever é o de $TOTALPARAESCREVER páginas." 0 0

funcao_menu


}

funcao_total () {

	paste ListaNomesApostilas.txt NumeroDePaginasEscritas.txt | \
	awk '{print $2 " " $1}' | \
	sort -n | awk '{print "Apostila "$2" tem "$1" páginas "}' | \
	sed 's/_/ /g' > TotalProduzidoPorApostila.txt

	dialog --title "$TITULO" --backtitle "$SUBTITULO" \
		--textbox TotalProduzidoPorApostila.txt 0 0

funcao_menu

}

funcao_porcentagem () {

	cat ListaApostilaFeitoSeFazer.txt | \
	awk '{print $1 " " $2 " " $3 " " $2/$3*100}' | \
	awk '{print $4 " " $3 " " $2 " " $1}' | \
	sed 's/\./,/' | sort -n | \
	awk '{print "Apostila: "$4" está -> "$1"% concluída"}' | tr '_' ' ' > Porcentagem.txt

	dialog --title "$TITULO" --backtitle "$SUBTITULO" \
		--textbox Porcentagem.txt 0 0

funcao_menu

}


# Função Menu
funcao_menu () {

	MENU=$(dialog --stdout --title "$TITULO" --backtitle "$SUBTITULO" \
		--no-cancel --help-button \
		--menu "Escolha uma opção:" 0 0 0 \
			Aviso "Mostra aviso importante sobre este programa" \
			Prepara "Transforma arquivo zip em base de dados" \
			Media "Informa média de trabalho" \
			Total "Relatório de páginas produzidas por apostila" \
			Porcentagem "Calcula porcentagem de apostilas concluídas" \
			Restante "Calcula tempo restante para término de apostilas" \
			Backup "Faz backup do arquivo zip" \
			Limpa "Limpa base de dados" \
			Sair "Sai deste programa")

	case $MENU in

		Aviso)
			funcao_aviso
		;;

		Prepara)

			funcao_prepara

		;;

		Media)

			funcao_media


		;;

		Total)

			funcao_total
	

		;;	


		Porcentagem)

			funcao_porcentagem

		;;

		Sair)
		
			dialog --title "Tchau!" --backtitle "$TITULO" \
				--infobox "Você solicitou sair deste programa. Obrigado \
				pelo uso, volte sempre!" 0 0

			exit 0
		;;

	esac

}

# Chamando a função menu
funcao_menu

# FIM
