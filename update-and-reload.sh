#!/bin/bash
# Use with crontab to keep redirects in sync with the repository.
set -Eeuo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
git fetch --quiet origin
LOCAL="$(git rev-parse @)"
REMOTE="$(git rev-parse @{u})"
[[ "$LOCAL" == "$REMOTE" ]] && exit 0
git pull --ff-only
sudo make reload
