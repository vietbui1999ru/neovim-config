local setup, catppuccin = pcall(require, "catppuccin")
if not setup then
	return
end

catppuccin.setup({
	transparent_background = true,
	term_colors = true,
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "bold",
		variables = "none",
	},

	default_integrations = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
	},

	lualine = {
		transparent = true,
	},
})

-- vim.cmd.colorscheme("catppuccin")
