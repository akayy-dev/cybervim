-- Keymaps for *anything* related to lsp

local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true, silent = true}

keymap('n', 'gr', '<cmd>TroubleToggle lsp_references<cr>', opts)                  -- Find References
keymap('n', 'gb', '<cmd>TroubleToggle<cr>', opts)                                 -- Toggle Bug Window
keymap('n', 'gp', '<cmd>Telescope lsp_workspace_diagnostics theme=dropdown<cr>', opts)           -- Preview Definition
keymap('n', '<F2>', '<cmd>Lspsaga rename<cr>', opts)                              -- Rename
keymap('n', 'gR', '<cmd>Lspsaga rename<cr>', opts)                                -- Rename for terminal without access to the F2 key
keymap('n', 'gd', '<cmd>TroubleToggle lsp_definitions<cr>', opts)                 -- Find Definition
keymap('n', 'gD', '<cmd>Lspsaga preview_definition<cr>', opts)                    -- Preview Definition
