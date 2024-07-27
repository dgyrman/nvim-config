return {
	-- FANCY STUFF
	{ "echasnovski/mini.starter", version = "*" },
	{ "Mofiqul/vscode.nvim" },
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "lewis6991/gitsigns.nvim" },

	-- DOCSTRING GENERATOR
	{ "kkoomen/vim-doge" },

	-- EDITOR STUFF
	{ "stevearc/conform.nvim", opts = {} },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" } },

	-- LSP STUFF
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-path" },
	{ "L3MON4D3/LuaSnip" },

	-- DEBUGGER
	{ "mfussenegger/nvim-dap" },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{ "leoluz/nvim-dap-go" },
}
