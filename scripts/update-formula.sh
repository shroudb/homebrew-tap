#!/usr/bin/env bash
#
# Updates a Homebrew formula with new version and sha256 hashes.
#
# Usage: ./scripts/update-formula.sh <formula> <version>
#   e.g.: ./scripts/update-formula.sh shroudb 0.1.4
#
# Requires: gh CLI (authenticated), shasum
#
set -euo pipefail

FORMULA="$1"
VERSION="$2"
TAG="v${VERSION}"
FORMULA_FILE="Formula/${FORMULA}.rb"

if [[ ! -f "$FORMULA_FILE" ]]; then
  echo "Error: $FORMULA_FILE not found" >&2
  exit 1
fi

# Map formula name to GitHub repo
case "$FORMULA" in
  shroudb)         REPO="shroudb/shroudb" ;;
  shroudb-transit) REPO="shroudb/shroudb-transit" ;;
  shroudb-auth)    REPO="shroudb/shroudb-auth" ;;
  shroudb-veil)    REPO="shroudb/shroudb-veil" ;;
  *) echo "Unknown formula: $FORMULA" >&2; exit 1 ;;
esac

echo "Updating $FORMULA_FILE to $TAG from $REPO"

# Download release assets and compute sha256
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

gh release download "$TAG" --repo "$REPO" --dir "$TMPDIR" --pattern '*.tar.gz'

# Compute hashes
sha_for() {
  local pattern="$1"
  local file
  file=$(find "$TMPDIR" -name "$pattern" -print -quit)
  if [[ -n "$file" ]]; then
    shasum -a 256 "$file" | awk '{print $1}'
  else
    echo "__SHA256_NOT_FOUND__"
  fi
}

SHA_MACOS_X86=$(sha_for "*x86_64-apple-darwin*")
SHA_MACOS_ARM=$(sha_for "*aarch64-apple-darwin*")
SHA_LINUX_X86=$(sha_for "*x86_64-unknown-linux-musl*")
SHA_LINUX_ARM=$(sha_for "*aarch64-unknown-linux-musl*")

# Update version
sed -i.bak "s/version \".*\"/version \"${VERSION}\"/" "$FORMULA_FILE"

# Update sha256 values
sed -i.bak "s/__SHA256_MACOS_X86_64__/${SHA_MACOS_X86}/" "$FORMULA_FILE"
sed -i.bak "s/__SHA256_MACOS_AARCH64__/${SHA_MACOS_ARM}/" "$FORMULA_FILE"
sed -i.bak "s/__SHA256_LINUX_X86_64__/${SHA_LINUX_X86}/" "$FORMULA_FILE"
sed -i.bak "s/__SHA256_LINUX_AARCH64__/${SHA_LINUX_ARM}/" "$FORMULA_FILE"

# Also replace any previously-set sha256 values (40+ hex chars after sha256 ")
# by re-downloading and rewriting — the sed above handles placeholders,
# this handles real hashes from prior releases
perl -i -pe "
  if (/x86_64-apple-darwin/ .. /sha256/) {
    s/sha256 \"[0-9a-f]{64}\"/sha256 \"${SHA_MACOS_X86}\"/;
  }
" "$FORMULA_FILE"

perl -i -pe "
  if (/aarch64-apple-darwin/ .. /sha256/) {
    s/sha256 \"[0-9a-f]{64}\"/sha256 \"${SHA_MACOS_ARM}\"/;
  }
" "$FORMULA_FILE"

rm -f "${FORMULA_FILE}.bak"

echo "Updated $FORMULA_FILE:"
echo "  version:          $VERSION"
echo "  macOS x86_64:     $SHA_MACOS_X86"
echo "  macOS aarch64:    $SHA_MACOS_ARM"
echo "  Linux x86_64:     $SHA_LINUX_X86"
echo "  Linux aarch64:    $SHA_LINUX_ARM"
