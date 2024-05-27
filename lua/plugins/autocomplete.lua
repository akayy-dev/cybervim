local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local config = function()
	local cmp = require("cmp")
	local luasnip = require("luasnip")
	local lspkind = require('lspkind')
	cmp.setup({
		formatting = {
			format = lspkind.cmp_format()
		},
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = 'luasnip' },
			{ name = "path" },
			{ name = "buffer" },
		}),
		mapping = cmp.mapping.preset.insert({
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			-- Tab & Shift TabCompletion
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, { "i", "s" }),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" }),
		}),
	})

	-- Use cmp as an autocomplete source for searching the buffer with / and ?
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "buffer" },
		}),
	})

	cmp.setup.cmdline({ ":" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "cmdline" },
		}),
	})

	-- Autocomplete for dadbod
	cmp.setup.filetype({'sql'}, {
		sources = {
			{ name = 'vim-dadbod-completion' },
			{ name = 'buffer' }
		}
	})
end

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		'onsails/lspkind.nvim'
	},
	config = config,
}
