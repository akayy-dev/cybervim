vim.o.relativenumber = true

-- Keymaps
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('n', 'q', '<cmd>cclose<CR>', opts)
