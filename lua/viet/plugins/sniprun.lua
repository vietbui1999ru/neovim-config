local status, sniprun = pcall(require, "sniprun")

if not status then
	return
end

sniprun.setup({
	display = { "TerminalWithCode" },
	display_options = {
		terminal_width = 45,
	},
})

-- currently giving error when quitting
