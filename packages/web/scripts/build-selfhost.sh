#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../../.."
export VITE_API_URL="${VITE_API_URL:?Set VITE_API_URL to your public HTTPS Raft origin}"
export VITE_COMMIT_SHA="$(git rev-parse HEAD)"
export VITE_RELEASE_BRANCH="$(git branch --show-current)"
pnpm --filter @botiverse/raft-web build
# Tailwind flattens the font import; retain its stable relative font URLs.
cp packages/web/src/assets/fonts/*.ttf packages/web/dist/assets/
