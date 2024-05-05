local config = function()
	local null_ls = require("null-ls")
	require("mason").setup()
	null_ls.setup()

	require("mason-null-ls").setup({
		ensure_installed = { "stylua", "autopep8" },
		handlers = {},
	})
end

return {
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"nvimtools/none-ls.nvim",
		},
		config = config,
	},
}
