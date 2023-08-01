vim.o.expandtab = false     -- Use tabs, not spaces.
vim.o.autoindent = true     -- Smart-Indentation.
vim.opt.number = true       -- Use Line Numbers.
vim.o.hidden = true         -- Disable modified buffer warning.
vim.o.cursorline = true     -- Highlight line cursor is on..
vim.o.mouse = 'a'           -- Enable mouse support.
vim.o.ignorecase = true     -- Case-insensitive search.
vim.o.splitbelow = true     -- Horizontal splits are on the bottom by default.
vim.o.splitright= true      -- Vertical splits are on the right by default.
vim.o.hlsearch = false      -- Disable Highlighting in search.
vim.o.timeoutlen = 500      -- Waits 500ms for which-key to popup.
vim.o.wrap = false          -- Disable line wrapping.
vim.o.termguicolors = true  -- Use full terminal colors.
vim.o.autoindent = true     -- Automatically indent
vim.o.foldlevelstart = 4    -- Automatically fold code 4 indents in
vim.o.tabstop = 4           -- Four space tab
vim.o.shiftwidth = 4        -- Four space tab
vim.o.laststatus = 3        -- Global statusline
require'colorizer'.setup()  -- Setup colorizer

vim.g.vscode_style = "dark" -- Use dark theme for vscode.nvim
vim.cmd[[colorscheme dracula]]
vim.o.guifont = "Hack Nerd Font Mono:h18"
