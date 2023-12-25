--<leader>
vim.g.mapleader = " "

local kmap = vim.keymap
local opts = { noremap = true, silent = true }

-- exit from insert mode and save current file
kmap.set("i", "jk", "<ESC>:w<Enter>", opts)

kmap.set("n", "<leader>nh", ":nohl<CR>")

kmap.set("n", "x", '"_x') -- delete character, but not copy to register

kmap.set("n", "<leader>+", "<C-a>") -- increment number ex: 5->6
kmap.set("n", "<leader>-", "<C-x>") -- decrement number ex: 5->4

kmap.set("n", "<leader>sv", "<C-w>v") -- splt win vertically
kmap.set("n", "<leader>sh", "<C-w>s") -- splt win horizontally
kmap.set("n", "<leader>se", "<C-w>=") -- make split win equal width
kmap.set("n", "<leader>sx", ":close<CR>") -- close current split win

kmap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
kmap.set("n", "<leader>tx", ":tabclose<CR>") -- close curr tab
kmap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
kmap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin kmaps
--
-- vim-maximizer
kmap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize or original size of window

-- nvim-tree toggle by pressing space + e
kmap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
kmap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
kmap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") --find text thruout project
kmap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find current string the cursor is on thruout project
kmap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- show active buffers
kmap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- show help tags

-- markdown
kmap.set("n", "<C-s>", ":MarkdownPreview<CR>")
kmap.set("n", "<M-s>", ":MarkdownPreviewStop<CR>")
kmap.set("n", "<C-p>", ":MarkdownPreviewToggle<CR>")

-- sniprun
--kmap.set("v", "p", "<Plug>SnipRun", { silent = true }) -- do not run
--kmap.set("n", "<leader>sp", "<Plug>SnipRunOperator", { silent = true }) -- do not run
--kmap.set("n", "<leader>sr", "<Plug>SnipRun", { silent = true }) -- do not run

-- Colorizer toggle
kmap.set("n", "<leader>ct", ":ColorizerToggle<CR>")

-- vim table mode
kmap.set("n", "<leader>tm", ":TableModeToggle<CR>") -- toggle table mode

-- zen-mode toggle
kmap.set("n", "<leader>zm", ":ZenMode<CR>")

-- lsync web turn on
-- kmap.set("n", "<leader>wb", )

-- nomodoro keymaps
local pomo = vim.api.nvim_set_keymap
pomo("n", "<leader>nw", "<cmd>NomoWork<cr>", opts)
pomo("n", "<leader>nb", "<cmd>NomoBreak<cr>", opts)
pomo("n", "<leader>ns", "<cmd>NomoStop<cr>", opts)

-- Anki fast
kmap.set("n", "<leader>ab", ":Anki Basic<Enter>")
kmap.set("n", "<leader>au", ":AnkiUnlock<Enter>")
kmap.set("n", "<leader>as", ":AnkiSend<Enter>")
kmap.set("n", "<leader>ai", ":AnkiSendGui<Enter>")

-- cycle suggestions
kmap.set("i", "<C-j>", "<Plug>(copilot-next)", { silent = true })
kmap.set("i", "<C-k>", "<Plug>(copilot-prev)", { silent = true })
kmap.set("n", "<leader>cp", ":Copilot panel<CR>")

-- keymaps for undo tree
--
kmap.set("n", "<leader>ut", ":UndotreeToggle<CR>")
-- keymaps for copilot enable
-- Define a variable to store the toggle state
-- In your keymaps.lua file
-- local my_toggle_state = false
--
-- local function toggle_copilot()
-- 	my_toggle_state = not my_toggle_state
--
-- 	if my_toggle_state then
-- 		vim.cmd(":Copilot enable")
-- 		-- Add your action A logic here
-- 	else
-- 		vim.cmd(":Copilot disable")
-- 		-- Add your action B logic here
-- 	end
-- end
-- kmap.set("n", "<leader>cet", ":lua toggle_copilot()<CR>", { noremap = true, silent = true })
-- return {
-- 	toggle_copilot = toggle_copilot,
-- }
