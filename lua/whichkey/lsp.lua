local wk = require("which-key")
local spaceopts= {
	mode = 'n',
	prefix = ' ',
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

local gotomaps = {
	g = {
		r = {"<cmd>Telescope lsp_references theme=dropdown<CR>", "references"},
		p = {"<cmd>Telescope lsp_workspace_diagnostics theme=dropdown<CR>", "problems"},
		d = {"<cmd>lua vim.lsp.buf.definition()<CR>", "definition"},
	},
}

local lspmaps = {
	l = {
		f = {"<cmd>lua vim.lsp.buf.formatting()<CR>", "format code"}
	}

}

wk.register(gotomaps, leaderlessopts)
wk.register(lspmaps, spaceopts)
