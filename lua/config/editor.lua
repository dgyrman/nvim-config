local mini = require('mini.starter')
local ayu = require('ayu')

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
mini.setup()
