
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{'Mofiqul/dracula.nvim',
		lazy=false,
		config = function() vim.cmd[[colorscheme dracula]] end,
		priority=1000},
	'neovim/nvim-lspconfig',
	{'nvimdev/lspsaga.nvim',
		config = function() require('lspsaga').setup({}) end,
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'kyazdani42/nvim-web-devicons',
		}},
	{'folke/noice.nvim',
		event='VeryLazy',
		opts={},
		dependencies={"MunifTanjim/nui.nvim"}},
	{'nvim-treesitter/nvim-treesitter',
		opts= {
			ensure_installed={ 'http', 'json' }
		}
	},
	{'kylechui/nvim-surround',
		version='*',
		lazy=false,
		-- event='VeryLazy',
		config = function()
			require('nvim-surround').setup()
		end
	},
	'jose-elias-alvarez/null-ls.nvim',
	{'williamboman/mason.nvim',
		-- LSP Installer
		dependencies={'williamboman/mason-lspconfig.nvim',}
	},
	'onsails/lspkind-nvim',
	'folke/trouble.nvim',
	'folke/neodev.nvim',
	'L3MON4D3/LuaSnip',
	'rafamadriz/friendly-snippets',
	{
		'hrsh7th/nvim-cmp',
		lazy=true,
		event = 'InsertEnter',
		dependencies = {
			'hrsh7th/cmp-omni',
			'hrsh7th/cmp-path',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
		}
	},
	'tamago324/nlsp-settings.nvim',
	'norcalli/nvim-colorizer.lua',
	'folke/todo-comments.nvim',
	'windwp/nvim-ts-autotag',
	'Mofiqul/vscode.nvim',
	'LunarVim/onedarker.nvim',
	'kyazdani42/nvim-tree.lua',
	'tpope/vim-fugitive',
	'lewis6991/gitsigns.nvim',
	'romgrk/barbar.nvim',
	'tamton-aquib/staline.nvim',
	'kevinhwang91/nvim-bqf',
	'HiPhish/nvim-ts-rainbow2',
	'kyazdani42/nvim-web-devicons',
	'folke/which-key.nvim',
	'numToStr/Comment.nvim',
	'aserowy/tmux.nvim',
	'nvim-lua/plenary.nvim', -- Dependency for some plugins (e.g telescope),
	'nvim-telescope/telescope.nvim'
	}
)
