-- Keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set leader key
vim.g.mapleader = " "

-- Disable arrow keys in normal mode
keymap("n", "<Left>", '<cmd>echoe "Use h"<CR>', opts)
keymap("n", "<Right>", '<cmd>echoe "Use l"<CR>', opts)
keymap("n", "<Up>", '<cmd>echoe "Use k"<CR>', opts)
keymap("n", "<Down>", '<cmd>echoe "Use j"<CR>', opts)

-- Disable arrow keys in insert mode
keymap("i", "<Left>", '<ESC><cmd>echoe "Use h"<CR>', opts)
keymap("i", "<Right>", '<ESC><cmd>echoe "Use l"<CR>', opts)
keymap("i", "<Up>", '<ESC><cmd>echoe "Use k"<CR>', opts)
keymap("i", "<Down>", '<ESC><cmd>echoe "Use j"<CR>', opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Nvim-tree toggle
keymap("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", opts)

-- LSP keymaps (will be set in lsp config)
-- These are placeholders that will be overridden
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    
    -- Go to definition, type definition, implementation, references
    keymap("n", "gd", vim.lsp.buf.definition, bufopts)
    keymap("n", "gy", vim.lsp.buf.type_definition, bufopts)
    keymap("n", "gi", vim.lsp.buf.implementation, bufopts)
    keymap("n", "gr", vim.lsp.buf.references, bufopts)
    
    -- Hover documentation
    keymap("n", "K", vim.lsp.buf.hover, bufopts)
    
    -- Rename symbol
    keymap("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    
    -- Code action
    keymap("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    keymap("v", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    
    -- Format
    keymap("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, bufopts)
    
    -- Diagnostics
    keymap("n", "[g", vim.diagnostic.goto_prev, bufopts)
    keymap("n", "]g", vim.diagnostic.goto_next, bufopts)
    keymap("n", "<leader>e", vim.diagnostic.open_float, bufopts)
    keymap("n", "<leader>q", vim.diagnostic.setloclist, bufopts)
  end,
})
