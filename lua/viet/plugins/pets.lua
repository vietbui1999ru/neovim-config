local setup, pets = pcall(require, "pets")
if not setup then
	return
end

pets.setup({
	row = 1,
	col = 0,
	speed_multiplier = 1.2,
	default_pet = "dog",
	death_animation = false,
})
