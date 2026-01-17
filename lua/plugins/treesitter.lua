return {
  	'nvim-treesitter/nvim-treesitter',
	branch = 'master',
  	build = ':TSUpdate',
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"bash",
				"python",
				"java",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
