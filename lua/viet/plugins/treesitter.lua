local status, treesitter = pcall(require, "nvim-treesitter.configs")

if not status then
	return
end

treesitter.setup({
	hightlight = {
		enable = true,
		additional_vim_regex_highlighting = { "org" },
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"yaml",
		"html",
		"css",
		"markdown",
		"lua",
		"vim",
		"gitignore",
		"dockerfile",
		"rust",
		"python",
		"regex",
		"org",
	},
	auto_install = true,
})
