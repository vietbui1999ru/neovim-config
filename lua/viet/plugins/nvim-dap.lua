local status, dap = pcall(require, "dap")

if not status then
	return
end

dap.adapters.python = {
	type = "executable",
	command = os.getenv("HOME") .. "/opt/homebrew/Caskroom/miniconda/base/bin/python",
	args = { "-m", "debugpy.adapter" },
}

--dap.configurations.python = {
--	{
--		type = "python",
--		request = "launch",
--		name = "Launch file",
--		program = "${file}",
--		pythonPath = function() end,
--	},
--}
