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
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
