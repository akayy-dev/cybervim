-- Database Integration

return {
	"tpope/vim-dadbod",
	cmd = { "DB", "DBUIToggle" },
	dependencies = {
		{
			"kristijanhusak/vim-dadbod-ui",
			-- cmd = { "DBUIToggle" },
		},
		"kristijanhusak/vim-dadbod-completion",
	},
}
