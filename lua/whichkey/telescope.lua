local wk = require('which-key')

local spaceopts = {
	mode = 'n',
	prefix = ' ',
	silent = true,
	noremap = true,
	buffer = nil
}

-- Find things with telescope
local findmaps = {
	f = {
		name = "find",
		f = { "<cmd>Telescope find_files theme=dropdown<CR>", "files" },
		g = { "<cmd>Telescope live_grep theme=dropdown<CR>", "grep" },
		h = { "<cmd>Telescope help_tags theme=dropdown<CR>", "help" },
		t = { "<cmd>TodoTelescope theme=dropdown<CR>", "todos" },
		s = { "<cmd>Telescope lsp_workspace_symbols theme=dropdown<CR>", "project symbols" },
		S = { "<cmd>Telescope lsp_document_symbols theme=dropdown<CR>", "file symbols" }
	}
}

wk.register(findmaps, spaceopts)
