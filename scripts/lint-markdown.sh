#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

npx --yes markdownlint-cli2 "docs/**/*.md" "*.md"
