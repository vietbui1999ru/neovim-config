local copilot_setup, copilot = pcall(require, "copilot")

if not copilot_setup then
	return
end

-- open nvim with copilot off
vim.cmd(":Copilot disable")
