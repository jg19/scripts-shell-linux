#!/bin/bash
# Descrição: apaga arquivos mais velhos que 30 dias do /tmp

cd /tmp
find . -type f -mtime +30 -delete
