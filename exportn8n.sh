#!/bin/bash

set -e

EXPORT_DIR="./backup-n8n-$(date +%Y-%m-%d_%H-%M)"
mkdir -p "$EXPORT_DIR"

echo "📤 Exportando workflows..."
n8n export:workflow --backup --output="$EXPORT_DIR"

echo "🔐 Exportando credenciais..."
n8n export:credentials --all --decrypted --output="$EXPORT_DIR"

git add "$EXPORT_DIR"
git commit -m "📦 Backup n8n: $(date +%Y-%m-%d\ %H:%M)"
echo "✅ Backup e commit concluídos em $EXPORT_DIR"
