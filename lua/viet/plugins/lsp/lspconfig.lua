local lspconfig_status, lspconfig = pcall(require, "lspconfig")
-- local python = require("python")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

-- local typescript_setup, typescript = pcall(require, "typescript")
-- if not typescript_setup then
-- 	return
-- end

local keymap = vim.keymap

-- enalbe kbinds for avail lsp server
local on_attach = function(client, bufnr)
	-- kbind options
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
	keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side

	-- typescript specific keymaps (e.g. rename file and update imports)
	--	if client.name == "ts_ls" then
	--		keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
	--		keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- organize imports (not in youtube nvim video)
	--		keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- remove unused variables (not in youtube nvim video)
	--	end
end

-- used to enable autocomplete
local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.codeAction = true
lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- config typescript
-- typescript.setup({
-- 	server = {
-- 		capabilities = capabilities,
-- 		on_attach = on_attach,
-- 	},
-- })
-- config rust
lspconfig["rust_analyzer"].setup({
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		["rust-analyzer"] = {},
	},
})
-- config css
lspconfig["cssls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- config tailwind
lspconfig["tailwindcss"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})
--
-- config python pyright
lspconfig["pyright"].setup({
	cmd = { "/Users/vietquocbui/.local/share/nvim/mason/bin/pyright-langserver", "--stdio" },
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "python" },
	pythonPath = function()
		-- Use the Python interpreter from the current Conda environment
		local venv_path = "/opt/homebrew/Caskroom/miniconda/base/bin/python3"
		return venv_path
	end,
})

lspconfig["gopls"].setup({})
lspconfig["bashls"].setup({})

-- config markdown
-- lspconfig["markdownlint-cli2"].setup({})

-- configure lua server (with special settings)
-- originally sumneko_lua
--
-- lspconfig["coq_lsp"].setup({})
--lspconfig["ocamllsp"].setup({})
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			--	workspace = {
			--		-- make language server aware of runtime files
			--		library = {
			--			[vim.fn.expand("$VIMRUNTIME/lua")] = true,
			--			[vim.fn.stdpath("config") .. "/lua"] = true,
			--		},
			--	},
		},
	},
})
