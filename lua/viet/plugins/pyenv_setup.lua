-- ~/.config/nvim/lua/user/plugins/python_setup.lua

local M = {}

function M.setup()
	-- Set the Python interpreter path for Neovim
	vim.g.python3_host_prog = "/opt/homebrew/Caskroom/miniconda/base/bin/python3"
end

return M
