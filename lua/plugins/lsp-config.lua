return {
	{
		"williamboman/mason.nvim",
		config = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = {
			ensure_installed = { "lua_ls" }
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
		end
	},
}
