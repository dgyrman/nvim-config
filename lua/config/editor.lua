local mini = require('mini.starter')
local ayu = require('ayu')
local harpoon = require("harpoon")

-- SETUP CUSTOM COLORS AND THEME
local dark_grey = '#12151b'
local light_grey = '#54575d'
local blue = '#43b0e6'

ayu.setup({
	mirage = false,
	terminal = true,
	overrides = {
		Normal = { bg = "None" },
		LineNrAbove = { fg = light_grey, bold = true },
		LineNrBelow = { fg = light_grey, bold = true },
		LineNr = { fg = blue, bold = true },
		Comment = { italic = true, fg = blue },
		["@comment"] = { italic = true, fg = blue },
		TelescopeSelection = { bold = true, bg = blue, fg = dark_grey },
		TelescopeBorder = { fg = blue },
		TelescopePromptBorder = { fg = blue },
		StatusLine = { fg = blue },
		ColorColumn = { bg = dark_grey },
		SignColumn = { bg = "None" }
	},
})

ayu.colorscheme()

-- LAUNCHSCREEN
mini.setup()

-- FORMATTER
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "prettier" } },
		html = { { "prettier" } }
	},
})

-- HAAH-ARPOOON AND SPIT ON THAT THAANG
harpoon:setup()
vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>hq", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>hw", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>he", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>hr", function() harpoon:list():select(4) end)
