local status, nomo = pcall(require, "nomodoro")

if not status then
	return
end

nomo.setup({
	work_time = 45,
	break_time = 10,
	menu_available = true,
	texts = {
		on_break_complete = "BREAK TIME'S OVER PAL!",
		on_work_complete = "CHILL YO ASS!",
		status_icon = "羽",
		timer_format = "!%0M:%0S", -- To include hours: '!%0H:%0M:%0S'
	},
	on_work_complete = function() end,
	on_break_complete = function() end,
})
