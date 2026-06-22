#!/usr/bin/env bash
#
# build_pages.sh — Multi-version documentation build for Cloudflare Pages.
#
# Runs INSIDE the Cloudflare Pages build environment (Build command).
#
# All documentation lives in a SINGLE branch. Each Odoo version is a fully
# self-contained tree under versions/<V>/ (no shared base) :
#   - versions/17.0/   -> the complete docs for Odoo 17.0
#   - versions/18.0/   -> the complete docs for Odoo 18.0
#   - versions/19.0/   -> the complete docs for Odoo 19.0
#
# The script builds each version's tree and produces ./public/<version>/<lang>/.
# Because everything is on one branch, ANY push rebuilds ALL versions — there is
# nothing to cherry-pick and no separate trigger per branch.
#
# For local single-version preview, use ./preview.sh <version> [lang].
#
# Cloudflare Pages configuration:
#   - Build command:        bash build_pages.sh
#   - Build output dir:     public
#   - Production branch:     multi-version   (the only branch; holds all versions)
#   - Environment variable:  PYTHON_VERSION = 3.12   (see Python note below)
#
# Python note: Sphinx 4.3.2 / docutils 0.16 (requirements.txt) is pinned to old
# versions. It builds fine on Python 3.12 in this project, but if pip install
# fails in the Cloudflare environment, lower PYTHON_VERSION to 3.8.

set -euo pipefail

# ---------------------------------------------------------------------------
# Configuration (override via env vars in Cloudflare)
# ---------------------------------------------------------------------------
VERSIONS="${VERSIONS:-17.0 18.0 19.0}"                              # versions to build
LANGS="${LANGS:-pt_PT}"                                             # languages to build
CANONICAL_VERSION="${CANONICAL_VERSION:-19.0}"                      # canonical version (SEO)
ROOT_URL="${ROOT_URL:-https://documentation.exosoftware.pt}"       # public domain (project_root)
DEFAULT_LANG="${DEFAULT_LANG:-pt_PT}"                              # language used by the root redirects

OUTPUT_DIR="public"        # = "Build output directory" in Cloudflare
VERSIONS_ROOT="versions"   # one self-contained tree per version

# CSV values required by the Makefile (-D versions=... / -D languages=...)
VERSIONS_CSV="$(echo "$VERSIONS" | tr ' ' ',')"
LANGS_CSV="$(echo "$LANGS" | tr ' ' ',')"

echo "==> Versions: $VERSIONS_CSV | Languages: $LANGS_CSV | Canonical: $CANONICAL_VERSION"
echo "==> project_root: $ROOT_URL"

# ---------------------------------------------------------------------------
# 1. Python dependencies
# ---------------------------------------------------------------------------
echo "==> Installing dependencies (requirements.txt)..."
python3 --version
python3 -m pip install --upgrade pip >/dev/null
python3 -m pip install -r requirements.txt
# Sphinx 4.3.2 imports `pkg_resources`, which setuptools >= 81 removed. The
# Cloudflare base image ships a newer setuptools, so pin one that still has it.
python3 -m pip install "setuptools<81"

# ---------------------------------------------------------------------------
# 2. Cleanup and preparation
# ---------------------------------------------------------------------------
echo "==> Cleaning previous builds..."
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# ---------------------------------------------------------------------------
# 3. Build each version
# ---------------------------------------------------------------------------
for version in $VERSIONS; do
    echo ""
    echo "============================================================"
    echo "==> Building version $version"
    echo "============================================================"

    src="$VERSIONS_ROOT/$version"
    if [ ! -d "$src" ]; then
        echo "ERROR: version tree not found at $src" >&2
        exit 1
    fi

    # Build, once per language. The Makefile writes to
    # _build/html/master/<lang> when VERSIONS is set and lang != en.
    for lang in $LANGS; do
        echo "--> make html ($version / $lang)"
        rm -rf _build/html/master
        DOC_VERSION="$version" make html \
            SOURCE_DIR="$src" \
            ROOT="$ROOT_URL" \
            CANONICAL_VERSION="$CANONICAL_VERSION" \
            VERSIONS="$VERSIONS_CSV" \
            LANGUAGES="$LANGS_CSV" \
            CURRENT_LANG="$lang" \
            IS_REMOTE_BUILD=1

        built="_build/html/master/$lang"
        if [ ! -d "$built" ]; then
            echo "ERROR: build not found at $built" >&2
            exit 1
        fi

        dest="$OUTPUT_DIR/$version/$lang"
        mkdir -p "$(dirname "$dest")"
        rm -rf "$dest"
        mv "$built" "$dest"
        echo "--> published to $dest"
    done
done

# ---------------------------------------------------------------------------
# 4. Redirects (root -> canonical version; each version -> default language)
# ---------------------------------------------------------------------------
echo ""
echo "==> Generating $OUTPUT_DIR/_redirects"
{
    echo "/ /$CANONICAL_VERSION/$DEFAULT_LANG/ 302"
    for version in $VERSIONS; do
        echo "/$version /$version/$DEFAULT_LANG/ 302"
    done
} > "$OUTPUT_DIR/_redirects"

echo ""
echo "==> Done. Contents of $OUTPUT_DIR:"
ls -la "$OUTPUT_DIR"
cat "$OUTPUT_DIR/_redirects"