#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "KDE config restore başlıyor..."

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/share"
mkdir -p "$HOME/Pictures/Wallpapers"

# Ana KDE ayarları
cp -v "$REPO_DIR/kglobalshortcutsrc" "$HOME/.config/" 2>/dev/null || true
cp -v "$REPO_DIR/khotkeysrc" "$HOME/.config/" 2>/dev/null || true
cp -v "$REPO_DIR/kwinrc" "$HOME/.config/" 2>/dev/null || true
cp -v "$REPO_DIR/kdeglobals" "$HOME/.config/" 2>/dev/null || true

# Ek config dosyaları
if [ -d "$REPO_DIR/config" ]; then
    cp -rv "$REPO_DIR/config/." "$HOME/.config/"
fi

# Plasma panel/widget/wallpaper düzeni
if [ -d "$REPO_DIR/plasma" ]; then
    cp -rv "$REPO_DIR/plasma/." "$HOME/.config/"
fi

# KWin scriptleri / Krohnkite
if [ -d "$REPO_DIR/kwin/scripts" ]; then
    mkdir -p "$HOME/.local/share/kwin/scripts"
    cp -rv "$REPO_DIR/kwin/scripts/." "$HOME/.local/share/kwin/scripts/"
fi

# Plasma widgetleri
if [ -d "$REPO_DIR/widgets" ]; then
    mkdir -p "$HOME/.local/share/plasma/plasmoids"
    cp -rv "$REPO_DIR/widgets/." "$HOME/.local/share/plasma/plasmoids/"
fi

# Klassy / tema dosyaları
if [ -d "$REPO_DIR/themes/klassy" ]; then
    mkdir -p "$HOME/.config/klassy"
    cp -rv "$REPO_DIR/themes/klassy/." "$HOME/.config/klassy/"
fi

# Wallpaper
if [ -d "$REPO_DIR/wallpapers" ]; then
    cp -rv "$REPO_DIR/wallpapers/." "$HOME/Pictures/Wallpapers/"
fi

# Fontlar
if [ -d "$REPO_DIR/fonts" ]; then
    mkdir -p "$HOME/.local/share/fonts"
    cp -rv "$REPO_DIR/fonts/." "$HOME/.local/share/fonts/"
    fc-cache -fv
fi

echo
echo "Restore tamamlandı."
echo "En sağlıklısı: logout/login yap."
echo "Gerekirse Plasma restart:"
echo "systemctl --user restart plasma-plasmashell"
