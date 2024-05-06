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
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		config = function()
			require("lsp-zero").preset({ manage_nvim_cmp = false })
			local mason_config = require("mason-lspconfig")
			mason_config.setup()
			mason_config.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim", "hs" },
								},
							},
						},
					})
				end,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
		end,
	},
}
