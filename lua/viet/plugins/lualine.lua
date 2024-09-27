local status, lualine = pcall(require, "lualine")
if not status then
	return
end

--local lualine_onedark = require("lualine.themes.catpuccin")
--local new_colors = {
--	blue = "#7CA6EA",
--	green = "#B0D28D",
--	violet = "#805281",
--	yellow = "#FED23F",
--	red = "#EB5D9B",
--	black = "#000000",
--	white = "#ffffff",
--}
--lualine_onedark.normal.a.bg = new_colors.white
--lualine_onedark.insert.a.bg = new_colors.green
--lualine_onedark.visual.a.bg = new_colors.violet
--lualine_onedark.command = {
--	a = {
--		gui = "bold",
--		bg = new_colors.red,
--		fg = new_colors.black,
--	},
--}

lualine.setup({

	options = {
		theme = "catppuccin",
	},
	sections = {
		lualine_x = {
			require("nomodoro").status,
		},
	},
})
