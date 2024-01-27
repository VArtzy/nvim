vim.g.mapleader = " "
vim.g.copilot_assume_mapped = true
vim.o.timeoutlen = 300
vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

vim.api.nvim_set_option('clipboard', 'unnamedplus')
vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber laststatus=0")
