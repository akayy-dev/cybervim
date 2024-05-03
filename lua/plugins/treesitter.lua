config = function()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = 'all',
		highlight = { enable = true },  -- Syntax Highlighting
		indent = { enable = true },     -- Indenting
		autotag = { enable = true },    -- Auto close HTML tags
		rainbow = {                     -- Rainbow Parentheses
			enable = true,
			extended_mode = true,
			max_file_lines = nil,
			colors = {'#FFFFFF', '#FF79C6', '#008080', '#50FA7B', '#F1FA8C', '#FFB86C', '#FF5555'}
		},
	}
end


return {
	'nvim-treesitter/nvim-treesitter',
	opts = {
		ensure_installed={ 'http', 'json' }
	},
	config = config
}
