vim.o.expandtab = false
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o') -- Disable Autocomment
vim.opt.tabstop = 4
vim.opt.shiftwidth= 4

require("luasnip/loaders/from_vscode").load({ paths = { "./snippets" } }) -- Load friendly-snippets
-- [[
-- NOTE ON SNIPPETS:
-- Due to the way that cheovim works, you need to manually clone the friendly-snippets repo to $MYVIMRC/snippets
-- ]]
