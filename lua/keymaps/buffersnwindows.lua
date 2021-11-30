-- Buffers
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}
keymap('n', '<leader>bs', '<cmd>Telescope buffers theme=dropdown<CR>', opts)
keymap('n', '<leader>bk', '<cmd>bdel!<CR>', opts)
