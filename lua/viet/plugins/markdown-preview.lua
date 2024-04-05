local g = vim.g

g.mkdp_auto_start = 0

g.mkdp_auto_close = 1

g.mkdp_refresh_slow = 0

g.mkdp_command_for_global = 0

g.mkdp_open_to_the_world = 0

g.mkdp_open_ip = ""

g.mkdp_browser = ""

g.mkdp_echo_preview_url = 1

g.mkdp_browserfunc = ""

g.mkdp_filetypes = { "markdown" }

g.mkdp_theme = "dark"

g.mkdp_preview_options = {
	mkit = {},
	katex = {},
	uml = {},
	maid = {},
	disable_sync_scroll = 0,
	sync_scroll_type = "middle",
	hide_yaml_meta = 1,
	sequence_diagrams = {},
	flowchart_diagrams = {},
	content_editable = false,
	disable_filename = 0,
	toc = {},
}

g.mkdp_combine_preview = 1

g.mkdp_combine_preview_auto_refresh = 1
