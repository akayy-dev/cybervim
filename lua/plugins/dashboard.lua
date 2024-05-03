local config = {
	theme='hyper',
	config = {
		project = {
			enable = true,
			label = 'Projects',
			limit = 8,
			action = function(path)
				vim.cmd('Telescope find_files cwd=' .. path)
		end}
	}
}

return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup(config)
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
} 
