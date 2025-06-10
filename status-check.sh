set -euo pipefail

URL="${1:-https://google.com}"

echo "Verificando saúde de $URL ..."
STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

if [[ "$STATUS" == 2* || "$STATUS" == 3* ]]; then
  echo "✅  Aplicação saudável (status $STATUS)."
  exit 0
else
  echo "❌  Falha na verificação (status $STATUS)."
  exit 1
fi