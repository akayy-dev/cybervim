local filename_with_icon = function()
	local fname = vim.fn.expand("%:t")
	if fname == "" then
		return "[Untitled]"
	else
		local ficon = require("nvim-web-devicons").get_icon(vim.fn.expand("%:t"))
		return ficon .. " " .. fname
	end
end

return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "dracula",
			section_separators = '',
			component_separators = ''
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { filename_with_icon },
			lualine_c = { "branch",  "diagnostics" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	},
}
