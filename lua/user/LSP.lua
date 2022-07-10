--[[
 _
| |___ _ __
| / __| '_ \
| \__ \ |_) |
|_|___/ .__/
      |_|
Configure neovim to work with LSP.
--]]

-- Enable LSP
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Server Installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

-- Configure server with JSON
require'nlspsettings'.setup({
	config_home = vim.fn.stdpath('config') .. '/nlsp-settings',
	local_settings_dir = 'nlsp-settings',
	loader = 'json'
})
