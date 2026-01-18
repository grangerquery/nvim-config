return {
	{
    	"williamboman/mason.nvim",
		lazy = false,
    	config = function()
	      	require("mason").setup()
    	end
  	},
  	{
    	"williamboman/mason-lspconfig.nvim",
    	lazy = false,
    	opts = {
      	auto_install = true,
    }
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
