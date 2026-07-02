#!/usr/bin/env bash
# Launch the riyaz palta/alankar app over a local HTTP server.
#
# Why a server? The piano now uses self-hosted samples in samples/piano/.
# Browsers block fetch() of local files when a page is opened via file://,
# which makes the sampled piano silent. Serving over http:// fixes that.
#
# Usage:  ./serve.sh [port]      (default port 8000)
set -euo pipefail

PORT="${1:-8000}"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
URL="http://localhost:${PORT}/index.html"

cd "$DIR"

# Pick an available Python.
if command -v python3 >/dev/null 2>&1; then
  PY=python3
elif command -v python >/dev/null 2>&1; then
  PY=python
else
  echo "Error: python3 (or python) is required to run the local server." >&2
  exit 1
fi

echo "Serving $DIR"
echo "Open: $URL   (Ctrl+C to stop)"

# Open the browser shortly after the server comes up (macOS 'open',
# Linux 'xdg-open'); ignore if neither exists.
( sleep 1
  if command -v open >/dev/null 2>&1; then open "$URL"
  elif command -v xdg-open >/dev/null 2>&1; then xdg-open "$URL"
  fi ) >/dev/null 2>&1 &

exec "$PY" -m http.server "$PORT"
