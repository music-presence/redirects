#!/bin/bash
set -Eeuo pipefail
# Do not delegate to commands in any other file here.
docker compose exec -w /etc/caddy caddy caddy reload
