local telescope = require('telescope.builtin')
local map = vim.keymap

-- OPEN NETRW
map.set("n", "<leader>e", vim.cmd.Ex)

-- CLOSE BUFFER
map.set("n", "<S-x>", "<CMD>bd<CR>")

-- VERTICAL NAVIGATION WITH CENTRING
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")

-- MOVING LINES
map.set("v", "<S-j>", ":m '>+1<CR>gv=gv")
map.set("v", "<S-k>", ":m '<-2<CR>gv=gv")

-- TELESCOPE
map.set("n", "<leader>t", telescope.find_files)
map.set("n", "<leader>ff", telescope.live_grep)
map.set("n", "<leader>b", telescope.buffers)
