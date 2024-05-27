return {
	"lukas-reineke/indent-blankline.nvim",
	config = function ()
		require('ibl').setup({
			exclude = {
				filetypes = {
					-- Filetypes to not allow indentlines on.
					'dashboard',
					'lspinfo',
					'lspinfo',
					'packer',
					'checkhealth',
					'help',
					'man',
					'gitcommit',
					'TelescopePrompt',
					'TelescopeResults',
				}
			}
			}
		)
	end
}
