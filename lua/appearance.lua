------------------
--  Colorizer   --
------------------
vim.opt.termguicolors = true
require'colorizer'.setup() -- Colorizer

------------------
--  Completion  --
------------------
-- Fix Pink Completion issue
vim.cmd[[
hi Pmenu ctermbg=NONE ctermfg=NONE
hi PmenuSel ctermbg=NONE ctermfg=NONE
]]

vim.g.colors_name = "onedarker"
