-- Null LSP Configuration
-- Used for things like formatting and linting

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.diagnostics.flake8.with({ extra_args = { "--ignore = W191, D103, E501" } }),
		null_ls.builtins.formatting.autopep8,
	},
})
