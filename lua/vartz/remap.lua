vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set("n", "<C-d>", ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')

vim.keymap.set('t', 'jk', '<C-\\><C-n>:wincmd w<CR>')
vim.keymap.set('n', '<C-w>', '<C-w>wi')
vim.keymap.set('n', '<S-t>', ':bot sp | resize 10 | term<CR>i')

vim.keymap.set("n", "<leader>pv", "<cmd>e ~/AppData/Local/nvim/<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set({"i", "v"}, "jk", "<Esc>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
