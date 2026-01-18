-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.statuscolumn = "%s %l %r "

-- Tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Other stuff
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.g.mapleader = " "

-- Quickly move between splits with Ctrl + hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Warnings
vim.diagnostic.config({
	virtual_text = true, -- Show warnings at the end of the line
	signs = true, -- Show 'W' in the gutter
	underline = true, -- Underline the specific warning text
	severity_sort = true, -- Sort by severity (Errors first, then Warnings)
})

-- Unmap arrow keys on startup
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("map <Up> <Nop>")
		vim.cmd("map <Left> <Nop>")
		vim.cmd("map <Right> <Nop>")
		vim.cmd("map <Down> <Nop>")
	end,
})
