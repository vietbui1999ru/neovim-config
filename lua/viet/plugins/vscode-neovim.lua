local status, vsnvim = pcall(require, "vscode-neovim")

if not status then
	return
end

vsnvim.setup({
	debug = false,
	-- on_attach = function(client, bufnr)
	--   -- your on_attach will be called at end of this function
	--   -- your stuff
	-- end,
	-- capabilities = capabilities,
	-- settings = {
	--   -- your settings
	-- }
})

-- 	-- lsp
--
-- 	  -- lspconfig
--
-- 	  -- lspkind
--
-- 	  -- lspsaga
