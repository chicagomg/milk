#!/usr/bin/env bash

set -eo pipefail

function log {
    GREEN='\033[0;32m'
    NC='\033[0m' # No Color
    printf "${GREEN}$(date +%T) [INFO]${NC} $1\n"
}

log "Running plugin version $(cat /app/.version) (hash $(cat /app/.hash | cut -c1-8))"