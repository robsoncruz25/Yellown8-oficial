#!/bin/bash

echo "🛡️ Fazendo backup dos fluxos do n8n..."

docker exec n8n-container n8n export:workflow --all --output=/files/backup-n8n.json

docker cp n8n-container:/files/backup-n8n.json ./backup-n8n-$(date +%Y%m%d).json

echo "✅ Backup completo em ./backup-n8n-*.json"
