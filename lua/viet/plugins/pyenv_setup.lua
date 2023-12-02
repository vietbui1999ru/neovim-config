-- ~/.config/nvim/lua/user/plugins/python_setup.lua

local M = {}

function M.setup()
	-- Set the Python interpreter path for Neovim
	vim.g.python3_host_prog = "/Users/vietquocbui/.pyenv/shims/python3"
end

return M
