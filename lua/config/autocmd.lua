vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.*",
	callback = function()
		local opt = vim.opt
		opt.colorcolumn="100"
		opt.relativenumber = true
		opt.nu = true
	end
})
