require("viet.plugins-setup")
require("viet.core.options")
require("viet.core.keymaps")
require("viet.core.colorscheme")
require("viet.plugins.comment")
require("viet.plugins.nvim-tree")
require("viet.plugins.lualine")
require("viet.plugins.telescope")
require("viet.plugins.nvim-cmp")
require("viet.plugins.lsp.mason")
require("viet.plugins.lsp.lspsaga")
require("viet.plugins.lsp.lspconfig")
require("viet.plugins.lsp.null-ls")
require("viet.plugins.autopairs")
require("viet.plugins.treesitter")
require("viet.plugins.gitsigns")
require("viet.plugins.orgmode")
require("viet.plugins.markdown-preview")
require("viet.plugins.org-bullets") --breaks shit
--require("viet.plugins.headlines") not working correctly
require("viet.plugins.nvim-colorizer")
--require("viet.plugins.sniprun")
require("viet.plugins.zen-mode")
--require("viet.plugins.neorg")
require("viet.plugins.which-key")
require("viet.plugins.nomodoro")
require("viet.plugins.anki")
require("luasnip")
-- this never works bruh
-- require("hologram").setup({
-- auto_display = true,
-- })
require("viet.plugins.vimtex")
require("viet.plugins.vim-fugitive")
require("viet.plugins.vscode-neovim")
if vim.g.vscode then
	-- VSCode extension
	print("VSCode neovim extension success")
else
	-- Neovim
	print("Neovim did not run")
end
