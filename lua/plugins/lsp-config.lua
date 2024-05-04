return {
	{
		"williamboman/mason.nvim",
		opts = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" }
		},
		config = {
			function ()
				require('mason-lspconfig').setup_handlers{
					function (server_name)
						require("lspconfig")[server_name].setup {}
					end
				}
			end
		}
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({
				settings = {
					diagnostics = {
						globals = { 'vim' }
					}
				}
			})
			lspconfig.pyright.setup({})
		end
	},
}
