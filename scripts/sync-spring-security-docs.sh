#!/usr/bin/env bash
set -euo pipefail

UPSTREAM_REMOTE="upstream"
UPSTREAM_BRANCH="main"
VERSION_FILE=".upstream-version"

REQUIRED_MIRRORS=(
  "docs/modules|docs/modules"
)

OPTIONAL_MIRRORS=(
  "docs/src/test/java|docs/modules/ROOT/examples/docs-src/test/java"
  "docs/src/test/kotlin|docs/modules/ROOT/examples/docs-src/test/kotlin"
  "docs/src/test/resources|docs/modules/ROOT/examples/docs-src/test/resources"
)

info() { printf "[sync-docs] %s\n" "$*"; }
fail() { printf "[sync-docs] ERROR: %s\n" "$*" >&2; exit 1; }

repo_root="$(git rev-parse --show-toplevel 2>/dev/null)" || fail "Run this script inside the Git repository."
cd "$repo_root"

if ! git remote get-url "$UPSTREAM_REMOTE" >/dev/null 2>&1; then
  fail "Remote upstream does not exist. Add it with: git remote add upstream https://github.com/spring-projects/spring-security.git"
fi

if [[ -n "$(git status --porcelain -- docs/modules "$VERSION_FILE")" ]]; then
  fail "docs/modules or .upstream-version has uncommitted changes. Commit/stash them before syncing."
fi

info "Fetching $UPSTREAM_REMOTE/$UPSTREAM_BRANCH..."
git fetch "$UPSTREAM_REMOTE" "$UPSTREAM_BRANCH" --prune
new_rev="$(git rev-parse "$UPSTREAM_REMOTE/$UPSTREAM_BRANCH")"
old_rev=""
[[ -f "$VERSION_FILE" ]] && old_rev="$(tr -d "[:space:]" < "$VERSION_FILE")"

if [[ -n "$old_rev" && "$old_rev" == "$new_rev" ]]; then
  info "Already up to date: $new_rev"
  exit 0
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

sync_mirror() {
  local source_path="$1" target_path="$2" required="$3"
  if ! git cat-file -e "$new_rev:$source_path" 2>/dev/null; then
    if [[ "$required" == "true" ]]; then
      fail "Required upstream path not found: $source_path"
    fi
    info "Skipping optional path not present upstream: $source_path"
    rm -rf "$target_path"
    return
  fi
  rm -rf "$tmp_dir/extract"
  mkdir -p "$tmp_dir/extract"
  git archive "$new_rev" "$source_path" | tar -x -C "$tmp_dir/extract"
  mkdir -p "$target_path"
  rsync -a --delete "$tmp_dir/extract/$source_path/" "$target_path/"
  info "$source_path -> $target_path"
}

if [[ -n "$old_rev" ]] && git cat-file -e "$old_rev^{commit}" 2>/dev/null; then
  info "Upstream docs changed since last sync:"
  git diff --name-status "$old_rev" "$new_rev" -- docs/modules docs/src/test || true
  printf "\n"
fi

for entry in "${REQUIRED_MIRRORS[@]}"; do
  sync_mirror "${entry%%|*}" "${entry##*|}" true
done
for entry in "${OPTIONAL_MIRRORS[@]}"; do
  sync_mirror "${entry%%|*}" "${entry##*|}" false
done

printf "%s\n" "$new_rev" > "$VERSION_FILE"
info "Sync complete: ${old_rev:-initial} -> $new_rev"
printf "\nChanged English docs:\n"
git status --short -- docs/modules "$VERSION_FILE"
printf "\nDiff summary:\n"
git diff --stat -- docs/modules "$VERSION_FILE"
printf "\nFiles to review/translate:\n"
git diff --name-status -- docs/modules || true
