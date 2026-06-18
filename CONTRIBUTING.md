# Contributing to Plasminal

First off, thanks for taking the time to contribute! 🎉 Every contribution makes Plasminal a little bit better, a little bit funnier, and a little bit more useful.

## 🐛 Reporting Bugs

Found something broken? We want to know about it. But first:

1. **Check existing issues** — someone else might have already reported it
2. **Make sure it's reproducible** — "it broke once" is hard to debug
3. **Include these details:**
   - Your distro and Plasma version (`plasmashell --version`)
   - Steps to reproduce
   - What you expected vs. what happened
   - Screenshots if applicable (bonus points for terminal screenshots showing the bug)

## 💡 Suggesting Features

Got an idea? We're all ears. Before opening an issue:

- **Describe the problem**, not just the solution. "I want X" is okay. "I want X because Y is annoying" is better.
- **Check if it's already been suggested** — duplicate issues are sad issues
- **Be realistic** — we're a small plasmoid, not a full IDE. But hey, dream big.

## 🔧 Code Contributions

### Setting Up Your Dev Environment

```bash
git clone https://github.com/DarkOhmLabs/plasminal.git
cd plasminal
./install.sh  # Install to local plasmoids for testing
```

That's it. No build system. No dependencies to compile. It's all QML.

### Making Changes

1. **Fork** the repo
2. **Create a branch:** `git checkout -b feature/your-feature-name`
3. **Make your changes** — keep them focused and atomic
4. **Test locally** — run `./install.sh` and verify on your desktop
5. **Commit** with a clear message: `git commit: "Add rainbow cursor mode"`
6. **Push:** `git push origin feature/your-feature-name`
7. **Open a Pull Request**

### Code Style

- **QML:** 4-space indentation, camelCase for ids and properties
- **XML (config):** Standard KConfig XML format
- **Bash (scripts):** `set -e`, quote your variables, keep it simple
- **Comments:** Only when the code isn't self-explanatory. If you need a comment to explain what `font.family = "Monospace"` does, maybe reconsider.

### What We're Looking For

- 🐛 Bug fixes
- 🎨 New skin presets
- 🌍 Translations (i18n)
- 📝 Documentation improvements
- ⚡ Performance optimizations
- 🧪 Tests (we don't have any yet — be the first!)

### What We're Not Looking For

- 🚀 Rewriting everything in C++ (the beauty is in the simplicity)
- 🎮 Adding a game mode (okay, maybe if it's really good)
- 🔄 Changing the entire architecture for no reason

## 📋 Pull Request Checklist

Before submitting your PR, make sure:

- [ ] Your code works on a standard Plasma 6 desktop
- [ ] You've tested the install/uninstall flow
- [ ] The `make dist` target still works
- [ ] You haven't broken existing functionality
- [ ] Your commit messages are clear and descriptive
- [ ] You've updated documentation if needed

## 💬 Communication

- **Be respectful** — we're all here because we like terminals on desktops
- **Be patient** — this is a side project, not a Fortune 500 company
- **Be constructive** — "this is bad" helps no one. "this could be better if..." helps everyone

## 🏆 Recognition

All contributors will be recognized in the README. You know, fame. Fortune. The whole deal. (Okay, maybe just a name in a list. But it's a nice list.)

---

<sub>Thanks for helping make Plasminal better! Now go touch some grass. Or don't. You have a terminal on your desktop. 🌱</sub>
