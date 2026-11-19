#!/bin/bash
set -e

echo "1. Executando/Compilando o arquivo novo..."
./teste.sh

echo "2. Enviando para o GitHub..."
git add .
git commit -m "Novo arquivo EC2: $(date +'%d/%m/%Y %H:%M:%S')" || echo "Nenhuma alteração nova."
git push origin main

echo "Concluído!"
