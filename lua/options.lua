vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.g.mapleader = " "

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.opt.sidescrolloff = 10
vim.opt.scrolloff = 10

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

local groups = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "EndOfBuffer",
  "LineNr",
  "FoldColumn",
  "VertSplit",
  "StatusLine",
  "StatusLineNC",
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE" })
    end
  end,
})
