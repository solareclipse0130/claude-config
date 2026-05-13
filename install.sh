#!/usr/bin/env bash
set -e

CLAUDE_DIR="$HOME/.claude"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$CLAUDE_DIR"

if [ -f "$CLAUDE_DIR/CLAUDE.md" ] && [ ! -L "$CLAUDE_DIR/CLAUDE.md" ]; then
  mv "$CLAUDE_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md.backup.$(date +%Y%m%d%H%M%S)"
fi

ln -sfn "$REPO_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"

echo "Installed global CLAUDE.md -> $CLAUDE_DIR/CLAUDE.md"