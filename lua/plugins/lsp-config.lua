return {
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
			ensure_installed = { "lua_ls", "clangd", "vtsls", "jsonls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- racket
			vim.lsp.config("racket_langserver", {
				cmd = { "racket", "-l", "racket-langserver" },
				filetypes = { "racket", "scheme" },
				root_markers = { ".git" },
			})
			vim.lsp.enable("racket_langserver")
			-- C
			vim.lsp.config("clangd", {
				cmd = {
					"clangd",
					"--fallback-style={UseTab: Always, IndentWidth: 4, TabWidth: 4}",
				},
			})
			vim.lsp.enable("clangd")
			vim.lsp.enable("vtsls") -- javascript/typescript
			vim.lsp.enable("jsonls") -- json
			-- Keymaps
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Definition" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
		end,
	},
}
