-- Working with workspaces
local wk = require('which-key')

local spaceopts = {
	mode = 'n',
	prefix = '<leader>',
	silent = true,
	noremap = true,
	buffer = nil
}

local workspacemaps = {
	w = {
		name = "workspace",
		a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add folder"},
		r = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove folder"},
		l = {"lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))", "list"},
		}
	}

wk.register(workspacemaps, spaceopts)
