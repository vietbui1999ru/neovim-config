local setup, harpoon = pcall(require, "harpoon")
if not setup then
	return
end

harpoon.setup({
	settings = {
		save_on_toggle = true,
		sync_on_ui_close = true,
		key = function()
			return vim.loop.cwd()
		end,
	},
})
local kmap = vim.keymap
kmap.set("n", "<leader>a", function()
	harpoon:list():append()
end)
kmap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
kmap.set("n", "<C-h>", function()
	harpoon:list():select(1)
end)
kmap.set("n", "<C-t>", function()
	harpoon:list():select(2)
end)
kmap.set("n", "<C-n>", function()
	harpoon:list():select(3)
end)
kmap.set("n", "<C-s>", function()
	harpoon:list():select(4)
end)
-- kmapprevious & next buffers stored within Harpoon list
kmap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
kmap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

kmap.set("n", "<C-e>", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })

harpoon:extend({
	UI_CREATE = function(cx)
		kmap.set("n", "<C-v>", function()
			harpoon.ui:select_menu_item({ vsplit = true })
		end, { buffer = cx.bufnr })

		kmap.set("n", "<C-x>", function()
			harpoon.ui:select_menu_item({ split = true })
		end, { buffer = cx.bufnr })

		kmap.set("n", "<C-t>", function()
			harpoon.ui:select_menu_item({ tabedit = true })
		end, { buffer = cx.bufnr })
	end,
})
