local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true}

keymap('n', '<leader>gs', '<cmd>Git<cr>', opts)
keymap('n', '<leader>gS', '<cmd>Telescope git_status<cr>', opts)
keymap('n', '<leader>gd', '<cmd>Gitsigns diffthis<cr>', opts)
keymap('n', '<leader>gf', 'Telescope git_files', opts)
keymap('n', '<leader>gb', 'Telescope git_branches', opts)
