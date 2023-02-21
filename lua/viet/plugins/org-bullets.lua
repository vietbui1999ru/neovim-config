local setup, bullets = pcall(require, "org-bullets")
if not setup then
	return
end

bullets.setup({

	concealcursor = false,
	symbols = {
		-- headlines can be a list
		headlines = { "❖", "▶︎", "➤", "➢" },

		--	headlines = function(default_list)
		--		table.insert(default_list, "🤖")
		--		return default_list
		--	end,
		checkboxes = {
			half = { "", "OrgTSCheckboxHalfChecked" },
			done = { "✓", "OrgDone" },
			todo = { "˟", "OrgTODO" },
		},
	},
	config = {
		set_config = {
			markers = {
				bullet = "⌭",
			},
		},
	},
})
