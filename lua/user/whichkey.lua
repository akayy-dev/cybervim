local wk = require('which-key')

local leaderopts = {
	mode = 'n',
	prefix = '<leader>',
	silent =  true,
	noremap = true,
	buffer = nill
}

-- Manage buffers.
local buffermaps = {
	name = "buffers",
	b = {
		k = {"<cmd>bdel!<CR>", "kill current buffer"},
		s = {"<cmd>Telescope buffers theme=dropdown<CR>", "search open buffers"}
	}
}

-- Interact with git.
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

local telescope = {
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

wk.register(buffermaps, leaderopts)
wk.register(telescope, leaderopts)
wk.register(gitmaps, leaderopts)
