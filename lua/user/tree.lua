vim.g.nvim_tree_add_trailing = 1

require'nvim-tree'.setup {
  open_on_tab         = false,
  hijack_cursor       = true,
  update_cwd          = false,
  --[[ update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  }, ]]
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  view = {
    width = 30,
    height = 30
  }
}

-- Auto close
vim.cmd[[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]]
