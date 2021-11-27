-- Fix Pink Completion issue
vim.cmd[[
hi Pmenu ctermbg=NONE ctermfg=NONE
hi PmenuSel ctermbg=NONE ctermfg=NONE
]]

vim.g.vscode_style = "dark"

vim.g.neon_transparent = true  -- Transparency

-- No Italics
vim.g.neon_italic_keyword = false
vim.g.neon_italic_function = false

vim.cmd('colorscheme neon')
