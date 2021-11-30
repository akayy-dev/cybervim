--[[
 _
| |___ _ __
| / __| '_ \
| \__ \ |_) |
|_|___/ .__/
      |_|
Configure neovim to work with LSP.
--]]
-- Setting up LSP with ftplugin doesn't work (stupidly).

vim.cmd[[
autocmd BufNewFile,BufRead *.py lua require'lspconfig'.pyright.setup{ single_file_support = true, }
]]


-- LSPSaga.nvim, brings icons and easy renaming of variables to LSP.
require'lspsaga'.init_lsp_saga{
	use_saga_diagnostic_sign = true,
	error_sign = '❗',
	warn_sign = '⚠',
	hint_sign = '',
	infor_sign = '🡒',
	dianostic_header_icon = '   ',
	code_action_icon = ' ',
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 20,
		virtual_text = true,
	},
}

-- LSPKind, bring icons to nvim-cmps completion menu.
local M = {}

M.icons = {
   Text = "",
   Method = "",
   Function = "",
   Constructor = "",
   Field = "ﰠ",
   Variable = "",
   Class = "ﴯ",
   Interface = "",
   Module = "",
   Property = "ﰠ",
   Unit = "塞",
   Value = "",
   Enum = "",
   Keyword = "",
   Snippet = "",
   Color = "",
   File = "",
   Reference = "",
   Folder = "",
   EnumMember = "",
   Constant = "",
   Struct = "פּ",
   Event = "",
   Operator = "",
   TypeParameter = "",
}

return M
