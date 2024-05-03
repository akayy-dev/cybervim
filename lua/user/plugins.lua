
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
	{'williamboman/mason.nvim',
		-- LSP Installer
		dependencies={'williamboman/mason-lspconfig.nvim',}
	},
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
	'norcalli/nvim-colorizer.lua',
	'folke/todo-comments.nvim',
	'windwp/nvim-ts-autotag',
	'kyazdani42/nvim-tree.lua',
	'lewis6991/gitsigns.nvim',
	'tamton-aquib/staline.nvim',
	'HiPhish/nvim-ts-rainbow2',
	'folke/which-key.nvim',
	'numToStr/Comment.nvim',
	'aserowy/tmux.nvim',
	'nvim-lua/plenary.nvim', -- Dependency for some plugins (e.g telescope),
	'nvim-telescope/telescope.nvim'
	}
)
