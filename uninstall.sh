#!/bin/bash
# Plasminal uninstaller

set -e

INSTALL_DIR="$HOME/.local/share/plasma/plasmoids/plasminal"

echo "Uninstalling Plasminal..."

# Remove widget directory
rm -rf "$INSTALL_DIR"

echo "Plasminal removed from $INSTALL_DIR"

# Restart plasmashell
echo "Restarting plasmashell..."
kquitapp6 plasmashell 2>/dev/null || true
sleep 2
kstart5 plasmashell &

echo "Done!"