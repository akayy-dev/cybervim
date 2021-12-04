local wk = require("which-key")
local spaceopts = {
	mode = 'n',
	prefix = '<leader>',
	silent = true,
	noremap = true,
	buffer = nil
}
local leaderlessopts = {
	mode = 'n',
	prefix = '',
	silent = true,
	noremap = true,
	buffer = nil
}

-- Find with telescope
local findmaps = {
	f = {
		name = "find",
		f = {"<cmd>Telescope find_files theme=dropdown<CR>", "files"},
		g = {"<cmd>Telescope live_grep theme=dropdown<CR>", "grep"},
		h = {"<cmd>Telescope help_tags theme=dropdown<CR>", "help"},
	}
}
wk.register(findmaps, spaceopts)

-- Git
local gitmaps = {
	g = {
		name = "Git",
		s = {"<cmd>Git<CR>", "status"},
		d = {"<cmd>Gitsigns diffthis<CR>", "diff"},
		f = {"<cmd>Telescope git_files theme=dropdown<CR>", "files"},
		b = {"<cmd>Telescope git_branches theme=dropdown<CR>", "branches"}
	}
}

wk.register(gitmaps, spaceopts)

wk.setup {}

-- LSP
local lspmaps = {
	g = {
		r = {"<cmd>Telescope lsp_references theme=dropdown<CR>", "references"},
		p = {"<cmd>Telescope lsp_workspace_diagnostics theme=dropdown<CR>", "problems"},
		d = {"<cmd>lua vim.lsp.buf.definition()<CR>", "definition"},
		e = {"<cmd>TodoTelescope theme=dropdown<CR>", "TODOs"},
	}
}

local workspacemaps = {
	w = {
		name = "workspace",
		a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add folder"},
		r = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove folder"},
		l = {"lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))", "list"},
		}
	}


wk.register(lspmaps, leaderlessopts)
wk.register(workspacemaps, spaceopts)
