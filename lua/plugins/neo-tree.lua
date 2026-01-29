return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		close_if_last_window = true,
		window = {
			width = 19,
			auto_expand_width = true,
			mappings = {
				["<Tab>"] = "open",
			},
		},
	},
	keys = {
		{ "<C-n>", ":Neotree toggle<CR>", desc = "Neo-tree Toggle" },
	},
}
