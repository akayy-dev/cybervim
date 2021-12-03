local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Python
require'lspconfig'.pyright.setup{
	single_file_support = true
}
-- HTML
require'lspconfig'.html.setup {
  capabilities = capabilities,
  single_file_support = true
}
