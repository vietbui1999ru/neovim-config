local status, orgmode = pcall(require, "orgmode")

if not status then
	return
end

orgmode.setup_ts_grammar()

orgmode.setup({
	org_agenda_files = { "~/Desktop/Spring-2023/*", "~/my-orgs/**/*" },
	org_default_notes_file = "~/Desktop/Spring-2023/refile.org",
	org_highlight_latex_and_related = "native",
	org_agenda_skip_scheduled_if_done = true,
	org_todo_keywords = { "TODO(t)", "NEXT", "|", "DONE" },
	mappings = {
		global = {
			org_agenda = "<Leader>oa",
			org_capture = "<Leader>oc",
		},
	},
	win_split_mode = function(name)
		local bufnr = vim.api.nvim_create_buf(false, true)
		--- Setting buffer name is required
		vim.api.nvim_buf_set_name(bufnr, name)

		local fill = 0.8
		local width = math.floor((vim.o.columns * fill))
		local height = math.floor((vim.o.lines * fill))
		local row = math.floor((((vim.o.lines - height) / 2) - 1))
		local col = math.floor(((vim.o.columns - width) / 2))

		vim.api.nvim_open_win(bufnr, true, {
			relative = "editor",
			width = width,
			height = height,
			row = row,
			col = col,
			style = "minimal",
			border = "rounded",
		})
	end,
})
