# Neovim Configuration

Modern Neovim configuration using Lua and native LSP.

## Structure

```
~/.config/nvim/
├── init.lua           # Main entry point
├── lua/
│   ├── options.lua    # All vim settings
│   ├── keymaps.lua    # Keybindings
│   └── plugins.lua    # Plugin configuration
└── README.md          # This file
```

## First-time Setup

1. **Start Neovim**: `nvim`
   - lazy.nvim will automatically install itself
   - All plugins will be installed automatically
   - This may take a few minutes the first time

2. **Install LSP servers**:
   - In Neovim, run `:Mason`
   - LSP servers for Lua, Python, and TypeScript will auto-install
   - To add more: `:MasonInstall <server-name>`

3. **Update plugins**: `:Lazy update`

## Key Changes from Your Old Config

### Plugin Manager
- **Old**: vim-plug
- **New**: lazy.nvim (faster, lazy loading, better UI)

### LSP/Completion
- **Old**: coc.nvim (external Node.js process)
- **New**: Native Neovim LSP + nvim-cmp (built-in, faster)

### File Explorer
- **Old**: NERDTree
- **New**: nvim-tree (Lua-based, faster)

### Motion Plugin
- **Old**: vim-easymotion
- **New**: flash.nvim (modern, tree-sitter aware)

### New Features
- **Telescope**: Fuzzy finder (Ctrl+P on steroids)
- **Treesitter**: Better syntax highlighting
- **Gitsigns**: Git integration
- **Lualine**: Modern status line
- **Auto-pairs**: Auto-close brackets
- **Indent guides**: Visual indent lines

## Keybindings

### Leader Key
- Space (` `)

### File Explorer
- `Ctrl+n`: Toggle nvim-tree

### Telescope (Fuzzy Finder)
- `<leader>ff`: Find files
- `<leader>fg`: Live grep (search in files)
- `<leader>fb`: List buffers
- `<leader>fh`: Help tags

### Motion (Flash)
- `s`: Jump to any character (like old EasyMotion)
- `S`: Jump to treesitter nodes

### LSP (when editing code)
- `gd`: Go to definition
- `gy`: Go to type definition
- `gi`: Go to implementation
- `gr`: Show references
- `K`: Hover documentation
- `<leader>rn`: Rename symbol
- `<leader>ca`: Code actions
- `<leader>f`: Format code
- `[g`: Previous diagnostic
- `]g`: Next diagnostic
- `<leader>e`: Show diagnostic float

### Window Navigation
- `Ctrl+h/j/k/l`: Navigate between splits

### Tim Pope Plugins (Preserved)
- `cs"'`: Change surrounding " to '
- `ds"`: Delete surrounding "
- `ysiw"`: Add " around word
- `gc`: Comment/uncomment (with motions)
- `[b` / `]b`: Previous/next buffer
- And many more unimpaired mappings

## Adding More LSP Servers

1. Open Neovim and run `:Mason`
2. Find your language server (e.g., `clangd` for C++)
3. Press `i` to install
4. Add configuration to `lua/plugins.lua`:

```lua
lspconfig.clangd.setup({
  capabilities = capabilities,
})
```

## Customization

- **Options**: Edit `lua/options.lua`
- **Keymaps**: Edit `lua/keymaps.lua`
- **Plugins**: Edit `lua/plugins.lua`

## Useful Commands

- `:Lazy`: Open plugin manager UI
- `:Mason`: Open LSP server installer
- `:checkhealth`: Diagnose issues
- `:Telescope`: List all Telescope pickers
- `:LspInfo`: Show LSP server status
- `:TSUpdate`: Update treesitter parsers

## Migration Notes

Your old `.vimrc` is still at `~/.vimrc` - you can keep it as reference or remove it.

All your familiar plugins are here in modern form:
- ✅ vim-surround, vim-unimpaired, vim-commentary (unchanged)
- ✅ EasyMotion → flash.nvim (same `s` key)
- ✅ NERDTree → nvim-tree (same `Ctrl+n`)
- ✅ coc.nvim → Native LSP (same keybindings)

The configuration is completely self-contained in `~/.config/nvim/`.
