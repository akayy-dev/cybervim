return {
	'aserowy/tmux.nvim',
	config = function()
		require('tmux').setup({
			navigation = {
				enable_default_keybindings = true,
				cycle_navigation = true,
			},
			resize = {
				enable_default_keybindings = true
			}
		})
	end
}
