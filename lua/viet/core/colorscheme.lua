local status, _ = pcall(vim.cmd, "colorscheme nightfly")

if not status then
	print("Colorscheme not found")
	return
end

if vim.fn.exists("g.nightflyTransparent") then
	vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
	vim.cmd("highlight VertSplit guibg=NONE ctermbg=NONE")
	vim.cmd("highlight StatusLine guibg=NONE ctermbg=NONE")
	vim.cmd("highlight StatusLineNC guibg=NONE ctermbg=NONE")
else
	print("Nightlify scheme does not support transparency")
end
