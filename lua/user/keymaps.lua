vim.g.mapleader = ' '
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- File Tree

-- Quickfix
keymap('n', 'Q', '<cmd>copen<CR>', opts)

-- LSP
keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', 'K', "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

-- Buffer Management
keymap('n', 'L', "<cmd>bnext<CR>", opts)
keymap('n', 'H', "<cmd>bprevious<CR>", opts)
keymap('n', '<leader>bd', '<cmd>bp|bd #<CR>', opts) -- Close window

-- Search commands
keymap('n', '<leader><leader>', '<cmd>Telescope commands theme=ivy<CR>', opts)


-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts) -- Search Files
keymap('n', '<leader>fg', '<cmd>Telescope live_grep theme=dropdown<CR>', opts) -- Search project for string
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts) -- Search for help tags
keymap('n', '<leader>?', '<cmd>Telescope keymaps<CR>', opts) -- Search keybindings

keymap('n', '<leader>g', '<cmd>LazyGit<CR>', opts)

-- Toggle Neotree
keymap('n', '<leader>ft', '<cmd>Neotree toggle<CR>', opts)


