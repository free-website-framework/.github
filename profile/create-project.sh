#!/bin/bash
set -euo pipefail

while getopts "o:p:" opt; do
  case "$opt" in
    o) OWNER="$OPTARG" ;;
    p) PROJECT="$OPTARG" ;;
    *) echo "Usage: $0 -o <owner> -p <project>" >&2; exit 1 ;;
  esac
done

if [ -z "${OWNER:-}" ]; then
  echo "Error: -o <owner> is required" >&2
  exit 1
fi

PROJECT="${PROJECT:-}"

if [ -n "$PROJECT" ]; then
  PROJECT="${PROJECT}-"
fi

gh repo create $OWNER/${PROJECT}backend \
  --template free-website-framework/backend \
  --private \
  --clone

gh repo create $OWNER/${PROJECT}frontend \
  --template free-website-framework/frontend \
  --public \
  --clone

gh repo create $OWNER/${PROJECT}infra \
  --template free-website-framework/infra \
  --private \
  --clone
