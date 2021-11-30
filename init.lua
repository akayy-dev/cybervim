-- Plugin
require('plugins/install')    -- Plugins List
require('plugins/nvim-tree')  -- File Tree
require('plugins/lualine')    -- Lualine
require('plugins/nvim-cmp')   -- CMP
require('plugins/babar')      -- Babar Tabline
require('plugins/tmux')       -- Tmux

-- Keymaps
require('keymaps/general')
require('keymaps/telescope')
require('keymaps/buffersnwindows')
require('keymaps/nvim-tree')
require('keymaps/git')

-- Code
require('code/general')
require('keymaps/lsp')
require('code/lsp')
require('plugins/treesitter')

-- Appearance
require("appearance")
