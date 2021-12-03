vim.g.mapleader = ' '
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Buffer Management
keymap('n', '<leader>bs', '<cmd>Telescope buffers theme=dropdown<CR>', opts)
keymap('n', '<leader>bk', '<cmd>bdel!<CR>', opts)

-- Working with Git
keymap('n', '<leader>gs', '<cmd>Git<cr>', opts)
keymap('n', '<leader>gS', '<cmd>Telescope git_status theme=dropdown<cr>', opts)
keymap('n', '<leader>gd', '<cmd>Gitsigns diffthis<cr>', opts)
keymap('n', '<leader>gf', '<cmd>Telescope git_files theme=dropdown<cr>', opts)
keymap('n', '<leader>gb', '<cmd>Telescope git_branches theme=dropdown<cr>', opts)


-- File Tree
keymap('n', '<leader>p', ':NvimTreeToggle<CR>', opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files theme=dropdown<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep theme=dropdown<CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags theme=dropdown<CR>', opts)
keymap('n', '<leader>f;', '<cmd>Telescope builtin theme=dropdown<CR>', opts)


-- LSP
keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
