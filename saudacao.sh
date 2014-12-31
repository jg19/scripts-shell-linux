#!/bin/bash
# Descrição: fornece saudação de acordo com o horário

horario=(`date +%H`)

if [[ "$horario" -le "12" ]]; then
echo "Bom dia!"
exit
fi

if [[ "$horario" -ge "19" ]]; then
echo "Boa noite!"
exit
fi

echo "Boa tarde!"
