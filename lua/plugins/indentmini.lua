return {
	url = "https://github.com/nvimdev/indentmini.nvim",
	config = function()
		require("indentmini").setup({
			only_current = false,
			enabled = true,
			char = "▏",
			vim.cmd.highlight("IndentLine guifg=#32302f"),
			vim.cmd.highlight("IndentLineCurrent guifg=#928374"),
		})
	end,
}
