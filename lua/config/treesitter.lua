local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = { "lua", "javascript", "html", "css", "twig", "go", "php" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
