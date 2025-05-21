return {
	{
		"williamboman/mason.nvim",
		opts = {},
		config = {
			function()
				require("mason").setup({
					ensure_installed = { "lua_ls", "pyright" },
				})
			end,
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
		end,
	},
}
