local header = {
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
"            __                    ",
 "    ____ _/ /______ ___  ____  __",
"   / __ `/ //_/ __ `/ / / / / / /",
" / /_/ / ,< / /_/ / /_/ / /_/ /" ,
"\\__,_/_/|_|\\__,_/\\__, /\\__, /"  ,
"               /____//____/",
"",
"",
"",
"",
"",
"",
"",
"",
			}


local config = {
theme='doom',
config = {
	header = header,
	center = {
		{
			icon = ' ',
			icon_hl = 'group',
			desc = 'New File           ',
			desc_hl = 'group',
			key = 'n',
			key_hl = 'group',
			key_format = ' [%s]',
			action = 'enew'
		},
		{
			icon = ' ',
			icon_hl = 'group',
			desc = 'Projects           ',
			desc_hl = 'group',
			key = 'fp',
			key_hl = 'group',
			key_format = ' [%s]',
			action = 'Telescope projects theme=ivy'
		},
		{
			icon = ' ',
			icon_hl = 'group',
			desc = 'Search Files           ',
			desc_hl = 'group',
			key = 'ff',
			key_hl = 'group',
			key_format = ' [%s]',
			action = 'Telescope find_files theme=ivy'
		},
		{
			icon = ' ',
			icon_hl = 'group',
			desc = 'Recent Files           ',
			desc_hl = 'group',
			key = 'fr',
			key_hl = 'group',
				key_format = ' [%s]',
				action = 'Telescope oldfiles theme=ivy'
			},

		},
	}
}

return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup(config)
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
} 
