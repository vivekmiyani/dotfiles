#!/bin/zsh
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

copy() {
  local source=$1
  local target=$2

  rm -rf "$target"
  mkdir -p "$(dirname "$target")"
  cp -R "$source" "$target"
}

copy "$DOTFILES/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
copy "$DOTFILES/claude/commands" "$HOME/.claude/commands"
copy "$DOTFILES/claude/output-styles" "$HOME/.claude/output-styles"
copy "$DOTFILES/claude/settings.json" "$HOME/.claude/settings.json"
