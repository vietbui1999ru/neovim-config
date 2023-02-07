local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_nightfly = require("lualine.themes.nightfly")
local new_colors = {
	blue = "#AA5656",
	green = "#698269",
	violet = "#F1DBBF",
	yellow = "#FFDA7B",
	black = "#3C2A21",
}
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet

lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
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
