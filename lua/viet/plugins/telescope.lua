-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
})


telescope.load_extension("fzf")
-- telescope.load_extension("orgmode")

-- local autocmd_id = vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "org",
-- 	group = vim.api.nvim_create_augroup("orgmode_telescope_nvim", { clear = true }),
-- 	callback = function()
-- 		vim.keymap.set("n", "<leader>or", require("telescope").extensions.orgmode.refile_heading)
-- 	end,
-- })
