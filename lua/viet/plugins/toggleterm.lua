local status, term = pcall(require, "toggleterm")
if not status then
	return
end

term.setup({
	function()
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return 20
		end
	end,
	open_mapping = [[<C-t>]],
	direction = "horizontal",
	terminal_mappings = true,
	hide_numbers = true,

	float_opts = {
		border = "curved",
		winblend = 3,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})
