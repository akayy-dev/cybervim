local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true}

keymap('n', '<leader>gs', '<cmd>Git<cr>', opts)
keymap('n', '<leader>gS', '<cmd>Telescope git_status<cr>', opts)
keymap('n', '<leader>gd', '<cmd>Gitsigns diffthis<cr>', opts)
keymap('n', '<leader>gf', '<cmd>Telescope git_files<cr>', opts)
keymap('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', opts)
