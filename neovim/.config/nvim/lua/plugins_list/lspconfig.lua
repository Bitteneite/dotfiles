-- LSP + Mason
return {

	-- Mason
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',

	-- LSP Configuration & Plugins
	'neovim/nvim-lspconfig',
	
	-- Code Completion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
			
			'hrsh7th/cmp-nvim-lsp',
		},
	},
	
	
	-- Neodev
	'folke/neodev.nvim',
	
}