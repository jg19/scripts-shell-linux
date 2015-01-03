#!/bin/bash
# Descrição: exemplo de read com tempo

echo "Pense rápido. Quanto é 49 x 36?"
if read -t 3 resposta
then
echo "Sua resposta foi $resposta. Será que acertou?"
else
echo "Demorou demais..."
fi
