#!/usr/bin/env bash
#
# build_pages.sh — Multi-version documentation build for Cloudflare Pages.
#
# Runs INSIDE the Cloudflare Pages build environment (Build command).
# It is the equivalent of Odoo's "runbot" (which is private): the repo only
# ships the Makefile, which builds ONE version; this script loops over the
# version branches and assembles the final tree at ./public/<version>/<lang>/.
#
# Cloudflare Pages configuration:
#   - Build command:        bash build_pages.sh
#   - Build output dir:     public
#   - Production branch:     17.0   (any branch works; the script fetches the others)
#   - Environment variable:  PYTHON_VERSION = 3.12   (see Python note below)
#
# Python note: Sphinx 4.3.2 / docutils 0.16 (requirements.txt) is pinned to old
# versions. It builds fine on Python 3.12 in this project, but if pip install
# fails in the Cloudflare environment, lower PYTHON_VERSION to 3.8.

set -euo pipefail

# ---------------------------------------------------------------------------
# Configuration (override via env vars in Cloudflare)
# ---------------------------------------------------------------------------
VERSIONS="${VERSIONS:-17.0 18.0}"                                   # version branches to build
LANGS="${LANGS:-pt_PT}"                                             # languages to build
CANONICAL_VERSION="${CANONICAL_VERSION:-18.0}"                      # canonical version (SEO)
ROOT_URL="${ROOT_URL:-https://documentation.exosoftware.pt}"       # public domain (project_root)
DEFAULT_LANG="${DEFAULT_LANG:-pt_PT}"                              # language used by the root redirects

OUTPUT_DIR="public"        # = "Build output directory" in Cloudflare
SRC_ROOT="_pages_src"      # temporary worktrees, one per version

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
rm -rf "$OUTPUT_DIR" "$SRC_ROOT"
mkdir -p "$OUTPUT_DIR"
# remove any stale worktrees left registered
git worktree prune || true

# ---------------------------------------------------------------------------
# 3. Build each version
# ---------------------------------------------------------------------------
for version in $VERSIONS; do
    echo ""
    echo "============================================================"
    echo "==> Building version $version"
    echo "============================================================"

    wt="$SRC_ROOT/$version"

    # Cloudflare only checks out the production branch, as a shallow clone.
    # Fetch this version's branch and create an isolated worktree from it.
    echo "--> git fetch origin $version"
    git fetch --depth=1 origin "+refs/heads/$version:refs/remotes/origin/$version"
    git worktree add --force --detach "$wt" "refs/remotes/origin/$version"

    # versions_names[version] (conf.py line ~433) raises KeyError if the current
    # version / the other versions are not listed. Make sure ALL versions being
    # built are present in this worktree's versions_names.
    # (duplicate keys in a dict literal are valid in Python — the last one wins)
    inject=""
    for v in $VERSIONS; do
        major="${v%.0}"                     # 17.0 -> 17
        inject="${inject}    '${v}': \"Odoo ${major}\",\n"
    done
    sed -i "0,/^versions_names = {/s//versions_names = {\n${inject}/" "$wt/conf.py"

    # The fork's branches were created from 17.0 and keep
    # `version = release = '17.0'` hardcoded. Without this, the 18.0 build
    # identifies itself as 17.0 (the switcher shows the wrong version as
    # selected). Force the correct version in this worktree.
    sed -i "s/^version = release = .*/version = release = '${version}'/" "$wt/conf.py"

    # Build, once per language. The Makefile writes to
    # _build/html/master/<lang> when VERSIONS is set and lang != en.
    for lang in $LANGS; do
        echo "--> make html ($version / $lang)"
        (
            cd "$wt"
            make html \
                ROOT="$ROOT_URL" \
                CANONICAL_VERSION="$CANONICAL_VERSION" \
                VERSIONS="$VERSIONS_CSV" \
                LANGUAGES="$LANGS_CSV" \
                CURRENT_LANG="$lang" \
                IS_REMOTE_BUILD=1
        )

        built="$wt/_build/html/master/$lang"
        if [ ! -d "$built" ]; then
            echo "ERROR: build not found at $built" >&2
            exit 1
        fi

        dest="$OUTPUT_DIR/$version/$lang"
        mkdir -p "$(dirname "$dest")"
        mv "$built" "$dest"
        echo "--> published to $dest"
    done

    # release this version's worktree
    git worktree remove --force "$wt"
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

# ---------------------------------------------------------------------------
# 5. Final cleanup
# ---------------------------------------------------------------------------
rm -rf "$SRC_ROOT"
git worktree prune || true

echo ""
echo "==> Done. Contents of $OUTPUT_DIR:"
ls -la "$OUTPUT_DIR"
cat "$OUTPUT_DIR/_redirects"