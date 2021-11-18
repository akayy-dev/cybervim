vim.g.python_recommended_style = false
vim.bo.expandtab = false  -- Use tabs for indentation
vim.opt.wrap = false
vim.opt.number = true
vim.opt.autoindent = true

-- Tab size
vim.opt.tabstop = 4
vim.opt.shiftwidth= 4

-- LSP
require'lspconfig'.pyright.setup{
	single_file_support = true,
}

-- Snippets
ls = require'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.snippets = {
	all = {
		s("ifmain", {
			t({"if __name__ == '__main__':"}),
			t({"", "\t"}), i(0),
	}),
		s("ifelse", {
			t({"if "}), i(1),
			t({":"}),
			t({"", "\t"}), i(2),
			t({"", "else:"}),
			t({"", "\t"}), i(0),
		}
	)
	}
}
