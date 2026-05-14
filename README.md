# Neovim Configuration

## 1. Install neovim on your system
- [Linux](https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz)
- [MacOS](https://github.com/neovim/neovim/releases/latest/download/nvim-macos-x86_64.tar.gz)
- [Windows](https://github.com/neovim/neovim/releases/latest/download/nvim-win64.msi)
- [Other](https://neovim.io/doc/install)

## 2. Setup packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## 3. Open packer.lua in nvim
```
nvim ~/.config/nvim/lua/skullarms/packer.lua
```

## 4. Load/Source script
```
:so
```

## 5. Install plugins
```
:PackerSync
```

### NOTE
Install additional dependencies like `ripgrep` on your system.

