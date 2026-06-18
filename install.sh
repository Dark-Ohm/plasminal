#!/bin/bash
# Plasminal installer
# Desktop widget with embedded terminal for KDE Plasma 6

set -e

INSTALL_DIR="$HOME/.local/share/plasma/plasmoids/plasminal"

echo "Installing Plasminal..."

# Create directory structure
mkdir -p "$INSTALL_DIR/contents/ui/config"
mkdir -p "$INSTALL_DIR/contents/config"
mkdir -p "$INSTALL_DIR/contents/images"

# Copy files
cp metadata.json "$INSTALL_DIR/"
cp contents/ui/main.qml "$INSTALL_DIR/contents/ui/"
cp contents/ui/config/ConfigGeneral.qml "$INSTALL_DIR/contents/ui/config/"
cp contents/config/main.xml "$INSTALL_DIR/contents/config/"
cp contents/images/icon.svg "$INSTALL_DIR/contents/images/"

echo "Plasminal installed to $INSTALL_DIR"

# Restart plasmashell to pick up the new widget
echo "Restarting plasmashell..."
kquitapp6 plasmashell 2>/dev/null || true
sleep 2
kstart5 plasmashell &

echo "Done! Add 'Plasminal' widget to your desktop via 'Add Widgets' menu."
echo ""
echo "Author: DarkOhmLabs (dohm.labs@proton.me)"
