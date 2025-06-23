# Fluxo: Atendimento WhatsApp com n8n

Este fluxo recebe mensagens via webhook, consulta cliente no Supabase e responde com integração com IA (GPT-4).

## Entradas

- Webhook HTTP (n8n) no endpoint `/webhook/whatsapp`

## Etapas do fluxo

1. Recebe mensagem do WhatsApp
2. Verifica se o número existe no Supabase
3. Gera resposta com OpenAI GPT-4
4. Responde via API externa (ex: UltraMsg)

## Variáveis

- `SUPABASE_URL`
- `SUPABASE_KEY`
- `OPENAI_API_KEY`
- `WHATSAPP_API_TOKEN`

## Logs

- Todos os eventos são salvos em `supabase.logs_eventos` com timestamp.

