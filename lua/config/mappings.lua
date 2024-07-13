local telescope = require('telescope.builtin')
---@type vim.keymap
local map = vim.keymap

-- NETRW
map.set("n", "<leader>e", vim.cmd.Ex)

-- SHORTCUTS
map.set("n", "<S-x>", vim.cmd.bd)
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "<C-j>", ":m .+1<CR>==")
map.set("n", "<C-k>", ":m .-2<CR>==")

-- TELESCOPE
map.set("n", "<leader>t", telescope.find_files)
map.set("n", "<leader>ff", telescope.live_grep)
map.set("n", "<leader>b", telescope.buffers)
