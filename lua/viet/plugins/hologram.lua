local status, holo = pcall(require, "hologram")
if not status then
	return
end

holo.setup({
	auto_display = true,
})
