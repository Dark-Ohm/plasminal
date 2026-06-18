# Changelog

All notable changes to Plasminal will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-06-18

### Added
- 🎉 Initial release!
- Full VT100 terminal emulator via QMLTermWidget
- 6 skin presets: default, catppuccin, nord, dracula, gruvbox, transparent
- 16 color scheme presets (Linux, Nord, Dracula, Catppuccin, Solarized, etc.)
- Configurable font family and size
- Terminal opacity control
- Toggleable scrollbar
- Custom initial working directory
- Custom shell command support
- Full mouse support (click, double-click, drag-select, right-click paste)
- Copy/Paste via Ctrl+Shift+C/V
- Desktop widget with expand/collapse via compact representation
- Settings panel with live configuration
- Install/uninstall scripts
- PKGBUILD for Arch Linux / AUR
- Makefile for distribution packaging
- Comprehensive documentation (this wasn't here before, you're welcome)

### Known Issues
- plasmashell restart required after install (Plasma limitation)
- No i18n support yet (everything is in English)
- No automated tests (we're trusting you to test manually)

### Notes
- Pure QML — no C++ compilation required
- Requires KDE Plasma 6.0+ and qmltermwidget
