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
				["1"] = "open", -- This sets '1' to expand folders or open files
			},
		},
	},
	keys = {
		{ "<C-n>", ":Neotree toggle<CR>", desc = "Neo-tree Toggle" },
	},
}
