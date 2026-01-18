return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvimtools/none-ls-extras.nvim", -- Optional: for extra community sources
	},
	config = function()
		local null_ls = require("null-ls") -- none-ls still uses the 'null-ls' name for compatibility

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,
				-- c/c++
				-- null_ls.builtins.diagnostics.checkstyle,
				-- null_ls.builtins.diagnostics.cppcheck,
				-- null_ls.builtins.diagnostics.checkstyle,
				-- python
				-- null_ls.builtins.formatting.black,
				-- null_ls.builtins.formatting.isort,
				--null_ls.builtins.diagnostics.mypy,
				--null_ls.builtins.diagnostics.flake8,
				--null_ls.builtins.diagnostics.pylint,
				-- java
				--null_ls.builtins.formatting.google_java_format,
				--null_ls.builtins.diagnostics.checkstyle,
			},
			-- Recommended: Auto-format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
