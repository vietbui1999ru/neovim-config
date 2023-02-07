local status, which = pcall(require, "which-key")
if not status then
	return
end

vim.o.timeout = true
vim.o.timeoutlen = 300

-- highly customizable for personally created keymaps
-- not yet implemented customs
which.setup({})
