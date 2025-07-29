# ⚡ Zsh Configuration - by osiic

Zsh config setup for WSL/Ubuntu/Linux with modular structure, custom aliases, and plugins.

## 🔧 Features

- Oh My Zsh
- Starship prompt support
- Git aliases & shell shortcuts
- Custom folder structure
- Zsh plugins (autosuggestions + syntax highlighting)

---

## 🚀 Installation

```bash
# Clone & run installer
git clone --recurse-submodules git@github.com:osiic/zsh.git ~/.config/dotfiles/zsh
cd ~/.config/dotfiles/zsh
chmod +x install.sh
./install.sh
````

### ✅ After install

```bash
source ~/.zshrc
```

---

## 🔌 Plugins

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

---

## 🧪 Test

```bash
echo $SHELL
zsh --version
```
