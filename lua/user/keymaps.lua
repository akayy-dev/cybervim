local keymap = vim.api.nvim_set_keymap
local funcmap = vim.keymap.set -- Newer keymap function, takes functions
local opts = { noremap = true, silent = true }

-- File Tree
keymap('n', '<leader>fe', '<cmd>Oil --float<CR>', opts)

-- Quickfix
keymap("n", "Q", "<cmd>copen<CR>", opts)

-- LSP
keymap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<leader>f=", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
keymap("n", "<leader>sj", "<cmd>Telescope lsp_document_symbols theme=dropdown<CR>", opts)
keymap("n", "<leader>sJ", "<cmd>Telescope lsp_workspace_symbols theme=dropdown<CR>", opts)
keymap("n", "<leader>sd", "<cmd>lua vim.diagnostic.setqflist()<CR>", opts)
funcmap('n', '<leader>sa', function() require('actions-preview').code_actions() end, opts)

-- TODO comments
keymap('n', '<leader>st', '<cmd>TodoQuickFix<CR>', opts)

-- Buffer Management
keymap("n", "L", "<cmd>bnext<CR>", opts)
keymap("n", "H", "<cmd>bprevious<CR>", opts)
keymap("n", "<leader>bd", "<cmd>bp|bd #<CR>", opts) -- Close window
funcmap('n', '<C-M>', function() require('maximize').toggle() end, opts)

-- Search commands
keymap("n", "<leader><leader>", "<cmd>Telescope commands theme=ivy<CR>", opts)
keymap("v", "<leader><leader>", "<cmd>Telescope commands theme=ivy<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)               -- Search Files
keymap("n", "<leader>fg", "<cmd>Telescope live_grep theme=dropdown<CR>", opts) -- Search project for string
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)                -- Search for help tags
keymap("n", "<leader>?", "<cmd>Telescope keymaps<CR>", opts)                   -- Search keybindings

keymap("n", "<leader>g", "<cmd>LazyGit<CR>", opts)

-- Toggle Neotree
keymap("n", "<leader>ft", "<cmd>Neotree toggle<CR>", opts)

-- Copilot Stuff!

-- Harpoon
local harpoon = require("harpoon")

-- List jumps
funcmap("n", "<leader>jj", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, opts)

-- Add to jumplist
funcmap("n", "<leader>ja", function()
	harpoon:list():add()
	-- local buffer_handle = vim.api.nvim_get_current_buf(0)
	-- local current_file_name = vim.api.get_buf_name(buffer_handle)
	print(string.format('Added %s to jumplist', vim.fn.expand('%')))
end, opts)

-- Remove from jumplist
funcmap("n", "<leader>jd", function()
	harpoon:list():remove()
	-- local buffer_handle = vim.api.nvim_get_current_buf(0)
	-- local current_file_name = vim.api.get_buf_name(buffer_handle)
	print(string.format('Removed %s from jumplist', vim.fn.expand('%')))
end, opts)

local replace_spaces_with_tabs = function()
	local bufnr = vim.api.nvim_get_current_buf()
	local start_line = 0
	local end_line = vim.api.nvim_buf_line_count(bufnr) - 1
	local lines = vim.api.nvim_buf_get_lines(bufnr, start_line, end_line, false)
	for i, line in ipairs(lines) do
		local _, num_spaces = line:find("^%s*")
		local num_tabs = num_spaces / 4
		lines[i] = string.rep("\t", num_tabs) .. line:sub(num_spaces + 1)
	end
	vim.api.nvim_buf_set_lines(bufnr, start_line, end_line, false, lines)
end
