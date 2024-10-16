local o = vim.o
o.ignorecase = true -- Ignore case when using lowercase in search
o.incsearch = true
o.smartcase = true -- But don't ignore it when using upper case
o.smarttab = true
o.smartindent = true
vim.g.mapleader = " "
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.opt.number = true
vim.wo.relativenumber = true
vim.o.completeopt = "menuone,noselect"
vim.o.breakindent = true
vim.o.hlsearch = false
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.clipboard = "unnamedplus"
vim.o.scrolloff = 999

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- navigating panes easier
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
