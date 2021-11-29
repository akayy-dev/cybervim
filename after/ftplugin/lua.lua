vim.opt_local.suffixesadd:prepend('.lua')
vim.opt_local.suffixesadd:prepend('init.lua')
vim.opt_local.path:prepend(vim.fn.stdpath('config')..'/lua')


vim.bo.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth= 4


vim.opt.number = true
