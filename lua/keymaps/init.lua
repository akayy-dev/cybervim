-- For keybinds that can't be setup with which-key
vim.g.mapleader = ' '
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- File Tree
keymap('n', '<leader>p', '<cmd>NvimTreeToggle<CR>', opts)

-- Quickfix
keymap('n', 'Q', '<cmd>copen<CR>', opts)

-- LSP
keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
