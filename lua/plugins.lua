require('packer').startup({ function()
	use 'wbthomason/packer.nvim' -- Packer (likes uninstalling itself)

	-- LSP
	use 'neovim/nvim-lspconfig' -- LSP
	use 'jose-elias-alvarez/null-ls.nvim' -- Formatting and stuff
	use 'tamago324/nlsp-settings.nvim' -- Configure lsp with .json files
	use 'williamboman/nvim-lsp-installer' -- LSP Server Installer
	use 'glepnir/lspsaga.nvim' -- LSP Frontend
	use 'onsails/lspkind-nvim' -- Icons for nvim-cmp

	-- Snippets
	use 'L3MON4D3/LuaSnip' -- Snippet engine
	use 'rafamadriz/friendly-snippets' -- Snippet collection

	-- Autcomplete
	use 'hrsh7th/nvim-cmp' -- Autcomplete engine
	use 'hrsh7th/cmp-path' -- File Path Completion
	use 'saadparwaiz1/cmp_luasnip' -- Snippet Completion
	use 'hrsh7th/cmp-nvim-lsp' -- LSP Completion Framework
	use 'norcalli/nvim-colorizer.lua' -- Colorizer
	use 'folke/todo-comments.nvim' -- Highlight and Search TODO comments

	-- Pairing
	use 'windwp/nvim-ts-autotag' -- Auto close html tags
	use 'windwp/nvim-autopairs' -- Auto pairs

	-- Colorschemes
	use 'Mofiqul/vscode.nvim'
	use 'rafamadriz/neon'
	use 'LunarVim/onedarker.nvim'
	use 'olimorris/onedarkpro.nvim'

	use 'kyazdani42/nvim-tree.lua' -- File Tree

	-- Git
	use 'tpope/vim-fugitive' -- Git Commands
	use 'lewis6991/gitsigns.nvim' -- Git Gutter

	-- UI enhancements
	use 'romgrk/barbar.nvim' -- Tabline
	use 'feline-nvim/feline.nvim' -- StatusLine
	use 'kevinhwang91/nvim-bqf' -- Better quickfix menu
	use 'p00f/nvim-ts-rainbow' -- Rainbow Parentheses
	use 'kyazdani42/nvim-web-devicons' -- Icons
	use 'folke/which-key.nvim' -- Show hotkeys

	-- Syntax
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- tree-sitter parser
	use 'numToStr/Comment.nvim' -- Auto comment
	-- Misc
	use 'aserowy/tmux.nvim' -- Tmux Integration
	use 'nvim-lua/plenary.nvim' -- Dependency for some plugins (e.g telescope)
	use 'nvim-telescope/telescope.nvim' -- Fuzzy Finder
end,
config = {
	display = {
		open_fn = function()
			-- Packer uses a floating window
			return require('packer.util').float({ border = 'single' })
		end,
	}
} }
)
