vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.g.mapleader = " "

vim.diagnostic.config({
	virtual_text = true, -- Show warnings at the end of the line
	signs = true,  -- Show 'W' in the gutter
	underline = true, -- Underline the specific warning text
	severity_sort = true, -- Sort by severity (Errors first, then Warnings)
})
