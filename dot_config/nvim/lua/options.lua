-- Neovim Options
local opt = vim.opt

-- Basic settings
opt.compatible = false
opt.mouse = "a"
opt.shortmess:append("I")

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Backspace behavior
opt.backspace = { "indent", "eol", "start" }

-- Buffer management
opt.hidden = true

-- Search settings
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Disable bells
opt.errorbells = false
opt.visualbell = true

-- Tab settings
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Encoding
opt.encoding = "utf-8"

-- Backup settings
opt.backup = false
opt.writebackup = false

-- Better experience
opt.updatetime = 300
opt.signcolumn = "yes"

-- Clipboard (use system clipboard)
opt.clipboard = "unnamedplus"

-- True color support
opt.termguicolors = true

-- Cursor line
opt.cursorline = true

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Disable auto comment on new line
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Filetype-specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
