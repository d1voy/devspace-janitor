#!/bin/bash
set -a
source .env 2>/dev/null || true
set +a 
mkdir -p "${CACHE_DIR:-/tmp/.devspace_cache}"
rsync -aq --delete "${CACHE_DIR:-/tmp/.devspace_cache}/" "${CLEANUP_TARGET:-/docker/test}/"
echo "devspace-local-$(hostname)"
