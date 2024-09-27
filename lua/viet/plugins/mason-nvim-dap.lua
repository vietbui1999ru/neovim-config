local status, nvimdap = pcall(require, "mason-nvim-dap")

if not status then
	return
end

nvimdap.setup()
