#!/usr/bin/env bash
# Ping IndexNotify after deploy (GET; POST without body returns 411).
# Main site key file: https://2advanced.com/2advanced-indexnow-2a7k9m4p.txt
# Return uses same key on return host: https://return.2advanced.com/2advanced-indexnow-2a7k9m4p.txt

KEY="2advanced-indexnow-2a7k9m4p"
KEY_MAIN="https://2advanced.com/2advanced-indexnow-2a7k9m4p.txt"
KEY_RETURN="https://return.2advanced.com/2advanced-indexnow-2a7k9m4p.txt"

set -e
echo "Pinging 2advanced.com..."
curl -sS -o /dev/null -w "2advanced.com -> %{http_code}\n" \
  "https://api.indexnow.org/indexnow?url=https://2advanced.com/&key=${KEY}&keyLocation=${KEY_MAIN}"

echo "Pinging return.2advanced.com..."
curl -sS -o /dev/null -w "return -> %{http_code}\n" \
  "https://api.indexnow.org/indexnow?url=https://return.2advanced.com/&key=${KEY}&keyLocation=${KEY_RETURN}"

# Key at site root (also aliased from /V3ExpansionsReboot/... via Netlify redirect when publish=dist)
KEY_V3="https://v3.2advanced.com/2advanced-indexnow-2a7k9m4p.txt"
# Canonical path (Netlify normalizes to lowercase /v3expansionsreboot/)
echo "Pinging v3.2advanced.com (canonical app path)..."
curl -sS -o /dev/null -w "v3 -> %{http_code}\n" \
  "https://api.indexnow.org/indexnow?url=https://v3.2advanced.com/v3expansionsreboot/&key=${KEY}&keyLocation=${KEY_V3}" || true
