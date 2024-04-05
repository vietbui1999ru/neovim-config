local status, zone = pcall(require, "zone")

if not status then
	return
end

zone.setup({
	style = "dvd",
	after = 1200,
	dvd = {
		text = { "DVD", "What you lookin' at?", "Get back to Work >:(" },
		tick_time = 100,
	},
})
