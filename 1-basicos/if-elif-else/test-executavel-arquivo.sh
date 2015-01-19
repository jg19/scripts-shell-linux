#!/bin/bash
# Descrição: testa se arquivo é executável

arquivo="/tmp/arquivoteste"
[ -x "$arquivo" ] || echo "Não é executavel"
