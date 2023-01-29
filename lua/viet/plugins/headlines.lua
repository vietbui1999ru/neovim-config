vim.cmd([[highlight Headline1 guibg=#1e2718]])
vim.cmd([[highlight Headline2 guibg=#21262d]])
vim.cmd([[highlight CodeBlock guibg=#1c1c1c]])
vim.cmd([[highlight Dash guibg=#D19A66 gui=bold]])

local setup, headlines = pcall(require, "headlines")
if not setup then
	return
end

headlines.setup({
	markdown = {
		headline_highlights = { "Headline" },
		codeblock_highlight = "CodeBlock",
		dash_highlight = "Dash",
		dash_string = "-",
		quote_highlight = "Quote",
		quote_string = "┃",
		fat_headlines = true,
		fat_headline_upper_string = "▃",
		fat_headline_lower_string = "⚀",
	},
	org = {
		headline_highlights = { "Headline1", "Headline2" },
		codeblock_highlight = "CodeBlock",
		dash_highlight = "Dash",
		dash_string = "-",
		quote_highlight = "Quote",
		quote_string = "┃",
		fat_headlines = true,
		fat_headline_upper_string = "▃",
		fat_headline_lower_string = "⚀",
	},
})
