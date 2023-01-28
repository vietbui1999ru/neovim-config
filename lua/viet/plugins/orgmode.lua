local status, orgmode = pcall(require, "orgmode")

if not status then
	return
end

orgmode.setup_ts_grammar()

orgmode.setup({
	org_agenda_files = { "~/Desktop/Spring-2023/org/*", "~/my-orgs/**/*" },
	org_default_notes_file = "~/Desktop/Spring-2023/refile.org",
})
