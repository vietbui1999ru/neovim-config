local status, _ = pcall(vim.cmd, "colorscheme catppuccin")

if not status then
	print("Colorscheme not found")
	return
end

-- opacity reduce for transparent background
-- vim.cmd("hi Normal ctermbg=none guibg=none")
