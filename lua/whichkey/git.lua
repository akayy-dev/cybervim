-- Using shortcuts with git
wk = require('which-key')

local spaceopts = {
	mode = 'n',
	prefix = '<leader>',
	silent = true,
	noremap = true,
	buffer = nil
}

local gitmaps = {
	g = {
		name = "Git",
		s = {"<cmd>Git<CR>", "status"},
		S = {"<cmd>Git add %<CR>", "stage current file"},
		d = {"<cmd>Gitsigns diffthis<CR>", "diff"},
		f = {"<cmd>Telescope git_files theme=dropdown<CR>", "files"},
		b = {"<cmd>Telescope git_branches theme=dropdown<CR>", "branches"}
	}
}

wk.register(gitmaps, spaceopts)
