#!/usr/bin/env bash
set -e

CLAUDE_DIR="$HOME/.claude"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$CLAUDE_DIR/agents"

# CLAUDE.md
if [ -f "$CLAUDE_DIR/CLAUDE.md" ] && [ ! -L "$CLAUDE_DIR/CLAUDE.md" ]; then
  mv "$CLAUDE_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md.backup.$(date +%Y%m%d%H%M%S)"
fi
ln -sfn "$REPO_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
echo "Installed global CLAUDE.md -> $CLAUDE_DIR/CLAUDE.md"

# agents/
if [ -d "$REPO_DIR/agents" ]; then
  for f in "$REPO_DIR/agents"/*.md; do
    [ -f "$f" ] || continue
    name="$(basename "$f")"
    ln -sfn "$f" "$CLAUDE_DIR/agents/$name"
    echo "Installed agent skill: $name -> $CLAUDE_DIR/agents/$name"
  done
fi
