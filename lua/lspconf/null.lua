-- Null LSP Configuration
-- Used for things like formatting and linting

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
    },
})
