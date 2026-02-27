return {
	--	{
	--		"catppuccin/nvim",
	--		lazy = false,
	--		name = "catppuccin",
	--		priority = 1000,
	--		opts = {
	--			flavour = "mocha",
	--			no_italic = true,
	--			auto_integrations = true,
	--			transparent_background = true,
	--		},
	--		config = function(_, opts)
	--			require("catppuccin").setup(opts)
	--			vim.cmd.colorscheme("catppuccin")
	--		end,
	--	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				italic = {
					strings = false,
					comments = false,
					operators = false,
					folds = false,
				},
				transparent_mode = true,
			})

			vim.cmd.colorscheme("gruvbox")
		end,
	},
	--	{
	--		"bjarneo/pixel.nvim",
	--		priority = 1000,
	--		config = function()
	--			vim.cmd.colorscheme("pixel")
	--		end,
	--	}
}
