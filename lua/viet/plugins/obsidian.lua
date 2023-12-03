-- Check if obsidian.nvim is installed
local setup, obsidian = pcall(require, "obsidian.nvim")
if not setup then
	return
end

-- Load required plugins
local plenary = require("plenary.nvim")

-- Setup obsidian.nvim
obsidian.setup({
	workspaces = {
		{
			name = "work",
			path = "~/repos/Obsidian/",
		},
		{
			name = "Test",
			path = "~/repos/DemoVault/",
		},
	},

	-- Other options can be added here
	completion = {
		nvim_cmp = true,
		min_chars = 2,
	},

	open_notes_in = "hsplit",
})

-- Now you can customize additional configurations specific to obsidian.nvim
