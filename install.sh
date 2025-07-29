#!/bin/bash
set -e

echo "🚀 Installing Zsh config..."

# Direktori target
TARGET_DIR="$HOME/.config/dotfiles/zsh"

# Clone repo ini jika belum
if [ ! -d "$TARGET_DIR" ]; then
  echo "🔄 Cloning dotfiles repo..."
  git clone --recurse-submodules git@github.com:osiic/zsh.git "$TARGET_DIR"
else
  echo "✅ Repo sudah ada. Menarik update..."
  cd "$TARGET_DIR"
  git pull
  git submodule update --init --recursive
fi

# Symlink ke .zshrc
echo "🔗 Menyambungkan .zshrc..."
ln -sf "$TARGET_DIR/.zshrc" "$HOME/.zshrc"

# Jalankan Zsh jika bukan di dalam shell Zsh
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "⚙️ Mengubah shell ke zsh..."
  chsh -s "$(which zsh)"
fi

echo "✅ Done! Sekarang jalankan: source ~/.zshrc"
