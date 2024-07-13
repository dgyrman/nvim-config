-- @var vim.opt  
local opt = vim.opt

-- SET LEADER KEY
vim.g.mapleader = " "

-- CUSTOMIZE NETRW
vim.g.netrw_banner = 0

-- CONFIGURE EDITOR
opt.fillchars = { eob = " " }
opt.laststatus = 0
opt.showmode = false
opt.signcolumn="yes:2"
opt.shortmess="I"
opt.clipboard="unnamedplus"
opt.wrap = false
opt.undodir = os.getenv("HOME") .. "/.config/nvim/.undodir"
opt.undofile = true
opt.hlsearch = false
opt.incsearch = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.termguicolors = true
