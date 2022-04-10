require('packer').startup(function()
	use 'wbthomason/packer.nvim'            -- Packer (likes uninstalling itself)

	use 'kyazdani42/nvim-web-devicons'      -- Icons
	use 'neovim/nvim-lspconfig'             -- LSP
	use 'jose-elias-alvarez/null-ls.nvim'   -- Formatting and stuff
	use 'tamago324/nlsp-settings.nvim'      -- Configure lsp with .json files
	use 'williamboman/nvim-lsp-installer'   -- LSP Server Installer
	use 'hrsh7th/cmp-nvim-lsp'              -- LSP Completion Framework
	use 'glepnir/lspsaga.nvim'              -- LSP Frontend
	use 'L3MON4D3/LuaSnip'                  -- Snippets
	use 'hrsh7th/nvim-cmp'                  -- Autocomplete
	use 'norcalli/nvim-colorizer.lua'       -- Colorizer
	use 'hrsh7th/cmp-path'                  -- File Path Completion
	use 'saadparwaiz1/cmp_luasnip'          -- Snippet Completion
	use 'onsails/lspkind-nvim'              -- Icons for nvim-cmp
	use 'windwp/nvim-ts-autotag'            -- Auto close html tags
	use 'folke/todo-comments.nvim'          -- Highlight and Search TODO comments
	use 'aserowy/tmux.nvim'                 -- Tmux Integration
	use 'windwp/nvim-autopairs'             -- Auto pairs
	use 'kevinhwang91/nvim-bqf'             -- Better quickfix menu
	use 'rafamadriz/neon'
	use 'Mofiqul/vscode.nvim'
	use 'LunarVim/onedarker.nvim'
	use 'olimorris/onedarkpro.nvim'
	use 'romgrk/barbar.nvim'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { "SmiteshP/nvim-gps", requires = "nvim-treesitter/nvim-treesitter" }
	use 'p00f/nvim-ts-rainbow'              -- Rainbow Parentheses
	use 'kyazdani42/nvim-tree.lua'          -- File Tree
	use 'tpope/vim-fugitive'                -- Git Commands
	use 'lewis6991/gitsigns.nvim'           -- Git Gutter
	use 'feline-nvim/feline.nvim'           -- StatusLine
	use 'nvim-telescope/telescope.nvim'     -- Fuzzy Finder
	use 'folke/which-key.nvim'              -- Show hotkeys
	use 'nvim-lua/plenary.nvim'             -- Dependency for some plugins (e.g telescope)
end)
