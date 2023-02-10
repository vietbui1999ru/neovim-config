local status, anki = pcall(require, "anki")

if not status then
	return
end

anki.setup({
	-- this function will add support for associating '.anki' extension with 'anki' filetype.
	tex_support = true,
	models = {
		-- Here you specify which notetype should be associated with which deck
		-- Notetype = "Deck Path",
		["Basic"] = "Vim::org",
	},
	-- contexts still not working
	--	contexts = {
	--		nvim = {
	--			tags = "shortcuts::mappings",
	--			fields = {
	--				Context = "mappings",
	--			},
	--		},
	--	},
	move_cursor_after_creation = true,
})

-- don't think this is the way to make it work?
-- anki.ankiWithDeck({ "Rust" }, { "Basic (and reversed card)" }, { "nvim" })
