<h1 align="center">
  <img src="contents/images/icon.svg" width="96" height="96" alt="Plasminal"><br>
  Plasminal
</h1>

<p align="center">
  <b>🖥️ Your terminal. On your desktop. Like it always belonged there.</b>
</p>

<p align="center">
  <a href="https://www.kde.org/plasma-desktop">
    <img src="https://img.shields.io/badge/Plasma-6.0+-54a0ff?style=flat-square&logo=kde&logoColor=white" alt="Plasma 6.0+">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-GPL--2.0--or--later-green?style=flat-square" alt="License: GPL-2.0-or-later">
  </a>
  <img src="https://img.shields.io/badge/Version-1.0.0-orange?style=flat-square" alt="Version 1.0.0">
  <img src="https://img.shields.io/badge/QML-pure-42b883?style=flat-square" alt="Pure QML">
</p>

<p align="center">
  <sub>Because every desktop deserves a command line staring back at you.</sub>
</p>

---

## 🤔 What Is This?

Ever wished you could just... <i>type things</i> directly on your desktop? Not in a floating window that gets lost behind your browser. Not in a tab you have to hunt for. <b>Right. On. The. Desktop.</b>

**Plasminal** is a KDE Plasma 6 widget that drops a fully functional terminal emulator onto your desktop. It's like someone took a terminal emulator, squished it into a plasmoid, and said <i>"Yeah, that works actually."</i>

No C++ compilation. No cmake. No dark rituals. Pure QML. Zero drama.

### Features That'll Make You Go "Huh, Neat"

- 🖥️ **Full VT100 terminal emulator** via QMLTermWidget — it's a real terminal, not a toy
- 📋 **Copy/Paste** via `Ctrl+Shift+C/V` or good ol' mouse selection
- 🎨 **6 skin presets** — Default, Catppuccin, Nord, Dracula, Gruvbox, and the mysterious "invisible" (transparent)
- ⚙️ **Highly customizable** — font, colors, opacity, border radius, padding — go wild
- 🖱️ **Full mouse support** — click, double-click, drag-select, right-click — it all works
- 📜 **Scrollbar** — toggleable for when your `npm install` output gets out of hand
- 🚀 **Lightweight** — pure QML, starts faster than you can type `sudo pacman -Syu`
- 🐚 **Custom shell** — want zsh? fish? nushell? A shell that prints "I love you" every 5 seconds? Go ahead

---

## 📸 Screenshot

<p align="center">
  <i>Imagine a terminal right on your desktop. Now open your eyes. That's it. That's the screenshot.</i>
</p>

---

## 📦 Requirements

Before we begin, make sure you have:

- **KDE Plasma 6.0+** — if you're still on Plasma 5, we need to talk
- **qmltermwidget** — the engine under the hood

Installing the dependency on your favorite distro:

```bash
# Arch Linux / CachyOS / Manjaro
sudo pacman -S qmltermwidget

# Fedora
sudo dnf install qmltermwidget

# openSUSE
sudo zypper install qmltermwidget

# Ubuntu / Debian
sudo apt install qmltermwidget
```

> **Note:** If you can't find `qmltermwidget` in your distro's repos, you might need to build it from [source](https://github.com/Swordfish90/qmltermwidget). Don't worry, it's less scary than it sounds. Probably.

---

## 🚀 Installation

### Method 1: The Easy Way (install script)

```bash
git clone https://github.com/DarkOhmLabs/plasminal.git
cd plasminal
./install.sh
```

This will:
1. Copy everything to the right place
2. Restart plasmashell
3. Make you question why you didn't do this sooner

### Method 2: The DIY Way (manual install)

For those who like to know exactly what's happening:

```bash
# Create the plasmoid directory
mkdir -p ~/.local/share/plasma/plasmoids/plasminal/contents/{ui/config,config,images}

# Copy the goods
cp metadata.json              ~/.local/share/plasma/plasmoids/plasminal/
cp contents/config/main.xml   ~/.local/share/plasma/plasmoids/plasminal/contents/config/
cp contents/ui/main.qml       ~/.local/share/plasma/plasmoids/plasminal/contents/ui/
cp contents/ui/config/ConfigGeneral.qml ~/.local/share/plasma/plasmoids/plasminal/contents/ui/config/
cp contents/images/icon.svg   ~/.local/share/plasma/plasmoids/plasminal/contents/images/

# Restart plasmashell to pick up the new widget
kquitapp6 plasmashell && kstart5 plasmashell
```

### Method 3: The Arch Way (AUR)

```bash
# Once published to AUR:
yay -S plasminal
# or
paru -S plasminal
```

<sub>*(Available once the PKGBUILD is submitted to AUR. Or now, if you're reading this and it's there. Hi from the past!)*</sub>

---

## 🎮 Usage

### Adding to Your Desktop

1. Right-click on your desktop → <b>"Add Widgets..."</b>
2. Search for <b>"Plasminal"</b> (or just "terminal" if you're feeling lazy)
3. Drag it onto your desktop
4. <b>Click the terminal icon</b> to expand/collapse

That's it. Four steps. You've used more steps making instant noodles.

### Keyboard Shortcuts

| Shortcut | Action | Why You'll Love It |
|----------|--------|--------------------|
| `Ctrl+Shift+C` | Copy selection | Because `Ctrl+C` sends SIGINT and kills your process |
| `Ctrl+Shift+V` | Paste from clipboard | Paste that URL you definitely didn't misclick-copy |
| `Mouse drag` | Select text | Just like a real terminal. Because it is one. |
| `Double-click` | Select word | Replace "foo" with "bar" at lightning speed |
| `Middle-click` | Paste selection | X11 primary paste — the superior clipboard |
| `Right-click` | Context use | Right-click to focus, then Ctrl+Shift+V to paste |

### Skin Presets

Right-click → <b>Settings...</b> → Skin Preset:

| Preset | Background | Border | Vibe |
|--------|------------|--------|------|
| **default** | `#1e1e2e` | `#313244` | Dark, professional, "I have my life together" |
| **catppuccin** | `#1e1e2e` | `#45475a` | Mocha-flavored productivity |
| **nord** | `#2e3440` | `#3b4252` | Like working inside an aurora borealis |
| **dracula** | `#282a36` | `#44475a` | What if VS Code and a vampire had a baby? |
| **gruvbox** | `#282828` | `#3c3836` | Retro warm cozy terminal energy |
| **transparent** | `transparent` | `transparent` | Terminal from the ghosts dimension |

All skins are fully customizable. Don't like the border color? Change it. Want 17px of padding? Sure, why not. This is your terminal. You do you.

---

## ⚙️ Configuration

Right-click the widget → <b>Settings...</b> to open the configuration panel.

### Terminal Settings

| Setting | Default | Description |
|---------|---------|-------------|
| **Font Family** | Monospace | Any font installed on your system. Comic Sans is technically a font. |
| **Font Size** | 12 | From tiny (6) to "I can read this from across the room" (72) |
| **Color Scheme** | Linux | 16 presets including Nord, Dracula, Catppuccin, Solarized, and more |
| **Opacity** | 1.0 | From fully opaque to "barely there but still useful" |
| **Scrollbar** | On | Show/hide the scrollbar. Omit the evidence of your scroll history. |
| **Initial Directory** | $HOME | Where the terminal starts. `$HOME`, `/tmp`, wherever your heart desires |
| **Custom Shell** | (empty) | Run a specific command. Try `cmatrix` for wow effect |

### Appearance Settings

| Setting | Default | Description |
|---------|---------|-------------|
| **Background Color** | `#1e1e2e` | Any hex color. Or named colors if you're feeling spicy |
| **Border Color** | `#313244` | Match your skin or go completely off the rails |
| **Border Width** | 1 | From invisible (0) to "I can see the border" (10) |
| **Border Radius** | 4 | Sharp corners (0) to "is this a terminal or a pill?" (32) |
| **Padding** | 4 | Breathing room between the terminal edge and the widget edge |

---

## 🗑️ Uninstall

### If you used the install script:

```bash
./uninstall.sh
```

### Manual removal:

```bash
rm -rf ~/.local/share/plasma/plasmoids/plasminal
kquitapp6 plasmashell && kstart5 plasmashell
```

We'll miss you. 💔

---

## 🏗️ Project Structure

```
plasminal/
├── README.md                      # You are here. Hello! 👋
├── LICENSE                        # GPL-2.0-or-later (we're nice like that)
├── metadata.json                  # Plasma applet metadata
├── Makefile                       # Build automation (make dist, make clean)
├── install.sh                     # One-command installer
├── uninstall.sh                   # One-command... uninstaller
├── PKGBUILD                       # For our Arch Linux friends
├── icon.svg                       # The cute terminal icon
└── contents/
    ├── config/
    │   └── main.xml               # KConfig schema (defines all settings)
    ├── images/
    │   └── icon.svg               # Icon shipped with the plasmoid
    └── ui/
        ├── main.qml               # The actual terminal widget (star of the show)
        └── config/
            └── ConfigGeneral.qml  # Settings page layout
```

---

## 🛠️ Building from Source

To create a distribution tarball:

```bash
make dist
```

This produces `plasminal-1.0.0.tar.gz` ready for distribution or AUR upload.

Other make targets:

```bash
make clean    # Remove build artifacts
make install  # Install to local plasmoids directory
make uninstall # Remove from local plasmoids directory
make dist     # Create distribution tarball
```

---

## 🤝 Contributing

Found a bug? Want a new feature? Think the docs could be funnier? (Hard, but possible.)

1. **Fork** the repository
2. **Create a branch:** `git checkout -b feature/my-awesome-thing`
3. **Commit:** `git commit -m "Add awesome thing that makes plasminal 23% cooler"`
4. **Push:** `git push origin feature/my-awesome-thing`
5. **Open a Pull Request** and tell us what you did

### Development Notes

- The entire widget is **pure QML** — no C++ to compile
- Main logic lives in `contents/ui/main.qml`
- Settings schema is in `contents/config/main.xml`
- Settings UI is in `contents/ui/config/ConfigGeneral.qml`
- Test by running `./install.sh` and adding the widget to your desktop

---

## 🙏 Credits

- **[QMLTermWidget](https://github.com/Swordfish90/qmltermwidget)** by Swordfish90 — the terminal emulator component that does all the heavy lifting. We just made it look pretty and sit on your desktop.
- **[Termoid](https://invent.kde.org/plasma/plasma-desktop/-/merge_requests/894)** by Eike Hein — the original concept that proved "terminal on desktop" isn't just a fever dream
- **KDE Plasma team** — for making a desktop environment extensible enough that someone can plop a terminal on it and call it a widget

---

## 🐛 Known Issues & Gotchas

- <b>plasmashell restart is required</b> after install for the widget to appear in the widget list. This is how Plasma works. It scans for widgets at startup. We don't make the rules.
- <b>The first click expands the widget, the second click focuses the terminal.</b> This is intentional. The compact representation is just a terminal icon — click it to expand, then interact with the terminal.
- <b>If you set opacity too low</b>, you'll be able to see your desktop wallpaper through your terminal. This might be a feature or a bug depending on your aesthetic preferences.

---

## 📜 License

```
Copyright (C) 2026 DarkOhmLabs

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

Full text: https://www.gnu.org/licenses/gpl-2.0.html
```

---

## 👤 Author

**DarkOhmLabs** — [dohm.labs@proton.me](mailto:dohm.labs@proton.me)

<sub>Made with ☕ and the firm belief that terminals deserve prime desktop real estate.</sub>

---

<p align="center">
  <b>⭐ Star this repo if Plasminal made you smile (or at least slightly amused you).</b><br>
  <sub>It's free. It takes 0.3 seconds. And it makes our day.</sub>
</p>

<p align="center">
  <sub><i>"Where desktops fear to tty."</i></sub>
</p>
