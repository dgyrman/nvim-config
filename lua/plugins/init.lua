return {
	-- FANCY STUFF
	{ 'echasnovski/mini.starter', version = '*' },
	{ 'Shatur/neovim-ayu' },

	-- DOCSTRING GENERATOR
	{ 'kkoomen/vim-doge' },

	-- EDITOR STUFF
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{ "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	-- LSP STUFF
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
}
