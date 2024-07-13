local lsp_zero = require('lsp-zero')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

-- SETUP LSP ZERO
lsp_zero.on_attach(function(_, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })

	-- FIND REFERENCES
	vim.keymap.set('n', 'lpr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })

	-- RENAME VARS
	vim.keymap.set('n', 'lrv', '<cmd>lua vim.lsp.buf.rename()<cr>', { buffer = bufnr })

	-- JUMP TO DECLARATION
	vim.keymap.set('n', 'lgd', '<cmd>lua vim.lsp.buf.declaration()<cr>', { buffer = bufnr })

	-- REFORMAT BUFFER	
	vim.keymap.set('n', 'lfb', function()
		vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
	end, { buffer = bufnr })
end)

-- SETUP MASON
mason.setup({})
mason_lspconfig.setup({
	ensure_installed = { 'lua_ls', 'pyright', 'intelephense', 'emmet_ls', 'tsserver', 'html', 'cssls' },
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})
