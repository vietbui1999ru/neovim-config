local status, _ = pcall(vim.cmd, "colorscheme moonfly")

if not status then
	print("Colorscheme not found")
	return
end

-- opacity reduce for transparent background
-- vim.cmd("hi Normal ctermbg=none guibg=none")
