-- Plugin
require('plugins/packer')     -- Plugins List
require('plugins/nvim-tree')  -- File Tree
require('plugins/lualine')    -- Lualine
require('plugins/nvim-cmp')   -- CMP
require('plugins/lspkind')    -- LSP Icons
require('plugins/babar')      -- Babar Tabline

-- Keymaps
require('keymaps/general')
require('keymaps/telescope')
require('keymaps/nvim-tree')
require('keymaps/lsp')
require('keymaps/git')

-- Code
vim.cmd("autocmd BufNewFile,BufRead *.py lua require('code/python')")
require('code/general')
require('plugins/lsprocks')
require('plugins/treesitter')

-- Appearance
require('appearance/theme')
require('appearance/general')
