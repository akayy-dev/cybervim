local lualine = require 'lualine'

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'ayu_mirage',
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
	},
	sections = {
		lualine_a = {''},
		lualine_b = {'branch', 'diff',
			{'diagnostics', sources={'nvim_diagnostic', 'coc'}}},
		lualine_c = {''},
		lualine_x = {'encoding'},
		lualine_y = {'progress', 'location'},
		lualine_z = {}
	},
}
