vim.g.mapleader = " "
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.wo.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noselect'
vim.o.breakindent = true
vim.o.hlsearch = false
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
