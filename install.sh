#!/bin/zsh
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local source=$1
  local target=$2

  if [[ -e $target && ! -L $target ]]; then
    echo "Error: $target already exists. Move it, then run again."
    exit 1
  fi

  mkdir -p "$(dirname "$target")"
  ln -sfn "$source" "$target"
}

link "$DOTFILES/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
link "$DOTFILES/claude/commands" "$HOME/.claude/commands"
link "$DOTFILES/claude/output-styles" "$HOME/.claude/output-styles"
link "$DOTFILES/claude/settings.json" "$HOME/.claude/settings.json"
