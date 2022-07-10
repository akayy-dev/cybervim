vim.g.mapleader = ' '
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- File Tree
keymap('n', '<leader>p', '<cmd>NvimTreeToggle<CR>', opts)

-- Quickfix
keymap('n', 'Q', '<cmd>copen<CR>', opts)

-- LSP
keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', 'K', "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
keymap('n', 'gd', 'lua vim.lsp.buf.definition()<CR>', opts)

-- Buffer Management
keymap('n', 'L', "<cmd>bnext<CR>", opts)
keymap('n', 'H', "<cmd>bprevious<CR>", opts)
