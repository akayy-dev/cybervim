local config = function()
	local project = require('project_nvim')
	project.setup({
		-- TODO: no whitespace when surrounding with brackets
	})
end


return {
	'ahmedkhalf/project.nvim',
	config = config
}




