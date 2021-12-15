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

-- Server Installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

-- Configure server with JSON
require'nlspsettings'.setup()
