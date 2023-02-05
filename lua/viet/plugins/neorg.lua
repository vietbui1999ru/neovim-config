local status, neorg = pcall(require, "neorg")
if not status then
	return
end

neorg.setup({
	load = {
		["core.defaults"] = {}, -- Loads default behaviour
		["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
		["core.integrations.zen_mode"] = {},
		["core.presenter"] = {
			config = {
				zen_mode = "zen-mode",
			},
		},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		}, -- adds completion integration
		["core.integrations.telescope"] = {},
		["core.norg.dirman"] = { -- Manages Neorg workspaces
			config = {
				workspaces = {
					notes = "~/Desktop/Spring-2023/neorg-notes/",
					school = "~/Desktop/Spring-2023/neorg-school-todos",
					outside = "~/Desktop/Spring-2023/neorg-freetime",
				},
			},
		},
	},
	run = ":Neorg sync-parsers",
	requires = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
})
