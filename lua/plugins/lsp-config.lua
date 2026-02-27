local lsp_servers = { "lua_ls", "clangd", "pyright", "ts_ls", "marksman", "stylua", "ruby_lsp" }

return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable(lsp_servers)
			vim.lsp.enable("racket_langserver")

			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
			vim.keymap.set("n", "gr", vim.lsp.buf.references)
			vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
		end,
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			automatic_enable = true,
			ensure_installed = lsp_servers,
		},
	},
}
