#!/bin/bash

# Script para compactar ntn-vault-service excluindo node_modules, target e .env

SOURCE_DIR="ntn-vault-service"
OUTPUT_FILE="ntn-vault-service.tar.gz"

echo "Compactando $SOURCE_DIR..."
echo "Arquivo de saída: $OUTPUT_FILE"

tar -czf "$OUTPUT_FILE" \
  --exclude="$SOURCE_DIR/node_modules" \
  --exclude="$SOURCE_DIR/**/node_modules" \
  --exclude="$SOURCE_DIR/target" \
  --exclude="$SOURCE_DIR/**/target" \
  --exclude="$SOURCE_DIR/.env" \
  --exclude="$SOURCE_DIR/**/.env" \
  --exclude="$SOURCE_DIR/.git" \
  "$SOURCE_DIR"

if [ $? -eq 0 ]; then
  echo "✓ Compactação concluída com sucesso!"
  echo "✓ Arquivo criado: $OUTPUT_FILE"
  ls -lh "$OUTPUT_FILE"
else
  echo "✗ Erro na compactação"
  exit 1
fi

echo ""

SOURCE_DIR="ntn-vault-docs"
OUTPUT_FILE="ntn-vault-docs.tar.gz"

echo "Compactando $SOURCE_DIR..."
echo "Arquivo de saída: $OUTPUT_FILE"

tar -czf "$OUTPUT_FILE" \
  --exclude="$SOURCE_DIR/node_modules" \
  --exclude="$SOURCE_DIR/**/node_modules" \
  --exclude="$SOURCE_DIR/target" \
  --exclude="$SOURCE_DIR/**/target" \
  --exclude="$SOURCE_DIR/.env" \
  --exclude="$SOURCE_DIR/**/.env" \
  --exclude="$SOURCE_DIR/.git" \
  "$SOURCE_DIR"

if [ $? -eq 0 ]; then
  echo "✓ Compactação concluída com sucesso!"
  echo "✓ Arquivo criado: $OUTPUT_FILE"
  ls -lh "$OUTPUT_FILE"
else
  echo "✗ Erro na compactação"
  exit 1
fi
