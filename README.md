# Dotfiles

My personal dotfiles managed by [chezmoi](https://www.chezmoi.io/).

## Contents

### Shell Configuration
- **`.zshrc`** - Zsh shell configuration

### Editor Configuration
- **`.vimrc`** - Vim configuration
- **`.config/nvim/`** - Neovim configuration with lazy.nvim plugin manager
  - `init.lua` - Main configuration entry point
  - `lua/options.lua` - Editor options
  - `lua/keymaps.lua` - Custom keybindings
  - `lua/plugins.lua` - Plugin specifications

### Terminal Multiplexer
- **`.tmux.conf`** - Tmux configuration

### Version Control
- **`.gitconfig`** - Git global configuration

### SSH
- **`.ssh/config`** - SSH client configuration (templated)
- **`.ssh/authorized_keys`** - SSH authorized keys (templated)

### Keyboard Customization
- **`.config/karabiner/`** - Karabiner-Elements configuration for macOS keyboard remapping

### Chezmoi Configuration
- **`.chezmoiexternal.toml`** - External dependencies managed by chezmoi
- **`.chezmoiignore`** - Files to ignore when applying dotfiles
- **`.chezmoiscripts/`** - Installation scripts
  - `run_once_before_install-packages.sh.tmpl` - Package installation script

## Usage

### Initial Setup
```bash
# Install chezmoi and initialize with this repository
chezmoi init https://github.com/yourusername/dotfiles.git

# Preview changes
chezmoi diff

# Apply dotfiles
chezmoi apply
```

### Daily Usage
```bash
# Edit a dotfile
chezmoi edit ~/.zshrc

# See what would change
chezmoi diff

# Apply changes
chezmoi apply

# Update from repository
chezmoi update
```

### Adding New Files
```bash
# Add a file to chezmoi
chezmoi add ~/.config/newfile

# Commit and push changes
cd $(chezmoi source-path)
git add .
git commit -m "feat: add new configuration"
git push
```

## License

See [LICENSE](LICENSE) file for details.
