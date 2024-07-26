local status, zone = pcall(require, "zone")

if not status then
	return
end

zone.setup({
	style = "dvd",
	after = 5,
	dvd = {
		tick_time = 100,
	},
})
