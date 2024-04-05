local setup, coq = pcall(require, "coqtail")

if not setup then
	return
end

coq.setup({
	-- your coq config
	--
})
