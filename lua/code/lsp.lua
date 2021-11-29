-- Setting up LSP with ftplugin doesn't work (stupidly).

vim.cmd[[
autocmd BufNewFile,BufRead *.py lua require'lspconfig'.pyright.setup{ single_file_support = true, }
]]
