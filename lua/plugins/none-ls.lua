return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvimtools/none-ls-extras.nvim",
			"jay-babu/mason-null-ls.nvim",
			"williamboman/mason.nvim",
			"gbprod/none-ls-shellcheck.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			require("mason-null-ls").setup({
				automatic_installation = true,
				handlers = {},
			})

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.clang_format.with({
						extra_args = { "-style={IndentWidth: 4}" },
					}),
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.shfmt,
					require("none-ls-shellcheck.diagnostics"),
					require("none-ls-shellcheck.code_actions"),
				},

				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ bufnr = bufnr })
							end,
						})
					end
				end,
			})

			vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format file" })
		end,
	},
}
