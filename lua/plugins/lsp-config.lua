return {
	{
    	"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		version = "1.32.0",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"clangd",
					"jdtls",
				},
				automatic_enable = false
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		tag = "v0.1.8",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
		end
	}
}
