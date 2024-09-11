--auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- packer plugin manager

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	-- use("bluz71/vim-nightfly-colors") -- colorscheme
	use("bluz71/vim-moonfly-colors") -- colorscheme
	use("christoomey/vim-tmux-navigator") -- tmux & split win navigation

	use("szw/vim-maximizer") -- max and restore current win

	use("tpope/vim-surround")
	--
	use("vim-scripts/ReplaceWithRegister")
	-- commenting with gc<movement>
	use("numToStr/Comment.nvim")

	-- file explorer
	use({
		"nvim-tree/nvim-tree.lua",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- auto-completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- managing & installing lsp servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- config lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	-- use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter

	use({
		"nvim-treesitter/nvim-treesitter",

		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs")
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

	-- git signs plugin
	use("lewis6991/gitsigns.nvim")

	--  install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- 	use({
	-- 		"iamcco/markdown-preview.nvim",
	-- 		run = "cd app && npm install",
	-- 		setup = function()
	-- 			vim.g.mkdp_filetypes = { "markdown" }
	-- 		end,
	-- 		ft = { "markdown" },
	-- 	})

	-- orgmode bullets beautify
	-- use({
	-- 	"akinsho/org-bullets.nvim",
	-- })

	-- orgmode headlines highlighter, still not working
	--	use({
	--		"lukas-reineke/headlines.nvim",
	--	}) not using orgmode anymore

	use({
		"norcalli/nvim-colorizer.lua",
	})

	-- run code right when you finish your command
	-- use({ "michaelb/sniprun", run = "zsh ./install.sh" })

	-- make creating tables in nvim fasterj
	use({ "dhruvasagar/vim-table-mode" })

	-- easy hyperlink, journaling, and wiki features
	-- use({ "ranjithshegde/orgWiki.nvim" })

	-- zen-mode
	-- use({ "folke/zen-mode.nvim" }) -- never used it

	-- primeagen's vim game
	use({ "ThePrimeagen/vim-be-good" })

	-- wakatime coding time monitor
	use({ "wakatime/vim-wakatime" })

	-- show hints for keybindings
	use({ "folke/which-key.nvim" })

	-- pomodoro
	use({ "dbinagi/nomodoro" })

	-- anki cards for neovim
	use({ "rareitems/anki.nvim" })

	-- ASCII Diagrams
	use({ "jbyuki/venn.nvim" })

	-- image viewer straight in terminal and nvim
	use({ "edluffy/hologram.nvim" }) --only works with alacritty/kitty

	use({ "nvim-lua/popup.nvim" })
	use({ "nvim-telescope/telescope-media-files.nvim" })

	use({ "tpope/vim-repeat" })

	use({ "lervag/vimtex" })

	-- use({ "github/copilot.vim" })

	-- vscode neovim
	use({ "asvetliakov/vscode-neovim" })

	use({
		"pwntester/octo.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"kyazdani42/nvim-web-devicons",
		},
	})

	use({
		"tpope/vim-fugitive",
	})

	-- toggle terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function() end,
	})

	use({
		"whonore/Coqtail",
	})
	--	use({
	--		"tomtomjhj/coq-lsp.nvim",
	--		after = "nvim-lspconfig",
	--		config = function()
	--			require("coq-lsp").setup()
	--		end,
	--	})

	use({ "rhysd/vim-wasm" })
	use({ "dense-analysis/ale" })

	use({ "epwalsh/obsidian.nvim", tag = "*", require = "nvim-lua/plenary.nvim" })
	use({ "mfussenegger/nvim-dap" })

	-- markdown preview in neovim
	-- use({ "npxbr/glow.nvim" })

	use({ "mbbill/undotree" })
	use({ "tamton-aquib/zone.nvim" })
	-- use({
	--		"giusgad/pets.nvim",
	--		requires = {
	--			"edluffy/hologram.nvim",
	--			"MunifTanjim/nui.nvim",
	--		},
	--	})
	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({ "ThePrimeagen/harpoon", branch = "harpoon2", requires = { "nvim-lua/plenary.nvim" } })
	use({ "mechatroner/rainbow_csv" })

	if packer_boostrap then
		require("packer").sync()
	end
end)
