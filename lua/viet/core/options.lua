local opt = vim.opt --for concisesness

vim.g.python_host_prog = "/opt/homebrew/bin/python3"
vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace

opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.conceallevel = 2
