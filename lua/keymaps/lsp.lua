-- Keymaps for *anything* related to lsp

local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true, silent = true}

keymap('n', 'gr', '<cmd>TroubleToggle lsp_references<cr>', opts)                                 -- Find References
keymap('n', 'gp', '<cmd>Telescope lsp_workspace_diagnostics theme=dropdown<cr>', opts)           -- Search problems
keymap('n', '<F2>', '<cmd>Lspsaga rename<cr>', opts)                                             -- Rename
keymap('n', 'gR', '<cmd>Lspsaga rename<cr>', opts)                                               -- Rename for terminal without access to the F2 key
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)                                 -- Find Definition
keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)                                      -- Hover documentation
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
