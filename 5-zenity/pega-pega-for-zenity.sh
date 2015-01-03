#!/bin/bash
# Descrição: exemplo de pega-pega usando for e zenity com progress

for ((int=1; int<=100; int++))
do
	echo $int
	sleep 0.05
done | zenity --progress \
	--auto-close \
	--text="Contando, quando terminar lá vou eu" \
	--title="Vá se esconder!"
