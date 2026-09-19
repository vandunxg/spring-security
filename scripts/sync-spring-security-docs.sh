#!/usr/bin/env bash

set -euo pipefail

UPSTREAM_REMOTE="upstream"
UPSTREAM_BRANCH="main"

echo "==> Fetching upstream..."
git fetch "${UPSTREAM_REMOTE}" "${UPSTREAM_BRANCH}"

echo "==> Replacing local English docs with upstream docs..."

rm -rf docs

git archive \
  "${UPSTREAM_REMOTE}/${UPSTREAM_BRANCH}" \
  docs \
  | tar -x

echo
echo "==> Upstream revision:"
git log -1 \
  --format="%H%n%ad%n%s" \
  --date=iso \
  "${UPSTREAM_REMOTE}/${UPSTREAM_BRANCH}"

echo
echo "==> Changes:"
git status --short docs

echo
echo "Done."
