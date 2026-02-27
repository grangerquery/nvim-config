return {
	"RaafatTurki/hex.nvim",
	event = "VeryLazy",
	config = function()
		require("hex").setup()
		vim.keymap.set("n", "<leader>hx", "<cmd>:HexToggle<cr>")
	end,
}
