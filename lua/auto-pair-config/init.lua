require('nvim-autopairs').setup({
	check_ts = true,
	disable_filetype = {
		'TelescopePrompt' ,
		'vim',
		'markdown'
	},
	disable_in_macro = true
})
