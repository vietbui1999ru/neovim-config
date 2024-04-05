local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_nightfly = require("lualine.themes.moonfly")
local new_colors = {
	blue = "#6CA2EA",
	green = "#B5D33D",
	violet = "#845286",
	yellow = "#FED23F",
	red = "#EB5D9B",
	black = "#000000",
	white = "#ffffff",
}
lualine_nightfly.normal.a.bg = new_colors.white
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet

lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.red,
		fg = new_colors.black,
	},
}

lualine.setup({

	options = {
		theme = lualine_nightfly,
	},
	sections = {
		lualine_x = {
			require("nomodoro").status,
		},
	},
})
