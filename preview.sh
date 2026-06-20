#!/usr/bin/env bash
#
# preview.sh — Build ONE version locally for preview.
#
# Each version is a self-contained tree under versions/<V>/, so this just
# builds versions/<version>/ directly.
#
# Usage:
#   ./preview.sh             # builds 17.0 in pt_PT (defaults)
#   ./preview.sh 18.0        # builds 18.0 in pt_PT
#   ./preview.sh 18.0 en     # builds 18.0 in English
#
# Output: _build/html/<lang>  (open index.html there)

set -euo pipefail

VERSION="${1:-17.0}"
LANG_CODE="${2:-pt_PT}"

SRC="versions/$VERSION"
if [ ! -d "$SRC" ]; then
    echo "ERROR: version tree not found at $SRC" >&2
    exit 1
fi

DOC_VERSION="$VERSION" make html SOURCE_DIR="$SRC" CURRENT_LANG="$LANG_CODE"

OUT="_build/html"
[ "$LANG_CODE" != "en" ] && OUT="$OUT/$LANG_CODE"
echo ""
echo "==> Built $VERSION ($LANG_CODE). Open: $OUT/index.html"