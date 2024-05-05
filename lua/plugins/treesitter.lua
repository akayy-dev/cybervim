local config = function()
	require 'nvim-treesitter.configs'.setup {
		ensure_installed = 'all',
		auto_install = 'true',         -- Automatically install parsers.
		highlight = { enable = true }, -- Syntax Highlighting
		indent = { enable = true }, -- Indenting
		autotag = { enable = true }, -- Auto close HTML tags
		rainbow = {              -- Rainbow Parentheses
			enable = true,
			extended_mode = true,
			query = 'rainbow-parens',
			max_file_lines = nil,
			colors = { '#F8F8F2', '#BD93F9', '#FF79C6', '#FFB86C', '#50FA7B'}
		},
	}
end


return {
	'nvim-treesitter/nvim-treesitter',
	opts = {
		ensure_installed = { 'http', 'json' }
	},
	dependencies = {
		'HiPhish/rainbow-delimiters.nvim'
	},
	config = config
}
