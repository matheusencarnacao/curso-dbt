#!/usr/bin/env bash
# Loads variables from .env into the current shell session (macOS/Linux).
# Usage: source load_env.sh

if [[ ! -f ".env" ]]; then
  echo "Arquivo .env nao encontrado. Copie .env.example para .env e preencha as credenciais primeiro." >&2
  return 1 2>/dev/null || exit 1
fi

set -a
source .env
set +a

echo "OK: variaveis de .env carregadas nesta sessao do shell."
