require("todo-comments").setup{
	signs = true,
	keywords = {
	TODO = { icon = " ", color = "info" },
	HACK = { icon = " ", color = "warning" },
	WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
	PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
	NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
		}
}
