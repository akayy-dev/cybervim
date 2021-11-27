local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true}

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files theme=dropdown<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep theme=dropdown<CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags theme=dropdown<CR>', opts)
keymap('n', '<leader>f;', '<cmd>Telescope<CR>', opts)

-- Buffers
keymap('n', '<leader>bs', '<cmd>Telescope buffers theme=dropdown<CR>', opts)
keymap('n', '<leader>bk', '<cmd>bdel<CR>', opts)
