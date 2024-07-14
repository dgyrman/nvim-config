-- As I wanted most clean look on startup
-- I only enable line- and color column if a buffer was open.
-- This autocmd does exactly that. So far... I hope I am not wrong
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.*",
	callback = function()
		local opt = vim.opt
		opt.colorcolumn = "100"
		opt.relativenumber = true
		opt.nu = true
	end
})
