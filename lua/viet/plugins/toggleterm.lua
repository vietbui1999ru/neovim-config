local status, toggle = pcall(require, "toggleterm")
if not status then
	return
end

toggle.setup({
	size = 20,
	open_mapping = [[<C-t>]],
	direction = "float",
})
