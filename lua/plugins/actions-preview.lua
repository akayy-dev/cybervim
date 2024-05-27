return {
	"aznhe21/actions-preview.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	opts = {
		backend = { "nui" },
		nui = {
			-- options for nui.nvim components
			-- component direction. "col" or "row"
			dir = "col",
			-- keymap for selection component: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/menu#keymap
			-- rgoerkgo
			keymap = {
				close = {"<Esc>", "q"}
			},
			-- options for nui Layout component: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/layout
			layout = {
				position = "50%",
				size = {
					width = "60%",
					height = "80%",
				},
				min_width = 40,
				min_height = 10,
				relative = "editor",
			},
			-- options for preview area: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup
			preview = {
				size = "60%",
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
			},
			-- options for selection area: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/menu
			select = {
				size = "40%",
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
			},
		},
	},
}
