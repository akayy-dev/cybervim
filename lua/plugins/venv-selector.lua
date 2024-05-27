return {
	'linux-cultist/venv-selector.nvim',
	dependencies = {
			'neovim/nvim-lspconfig',
			'nvim-telescope/telescope.nvim',
			'mfussenegger/nvim-dap-python',
	},
	config = function ()
		require('venv-selector').setup {
			name = { "env", "venv", ".venv" },
			path = './'
		}
	end,
	event = {'BufEnter *.py'}
}
