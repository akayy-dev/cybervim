vim.o.relativenumber = true

-- TODO: Convert vim.cmd into a lua buffer keymap when possible
-- Keymaps
-- local keymap = vim.api.nvim_buf_set_keymap
--local opts = {noremap = true, silent = true}

-- keymap('n', 'q', '<cmd>cclose<CR>', opts)
vim.cmd[[nnoremap <buffer> q <cmd>cclose<CR>]]
