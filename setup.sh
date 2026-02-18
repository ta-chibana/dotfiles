#!/bin/sh

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

# Install GNU Stow if not available
if ! command -v stow >/dev/null 2>&1; then
  echo "stow not found. Install with: brew install stow"
  exit 1
fi

# Deploy all packages
stow --target="$HOME" --restow */
