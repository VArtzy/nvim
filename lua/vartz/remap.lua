vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set('n', '<C-S>', ':w<CR>')

vim.keymap.set('t', 'jj', 'exit<CR>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n>:wincmd w<CR>')
vim.keymap.set('n', '<C-w>', '<C-w>wi')
vim.keymap.set('n', 't', [[:let current_dir = getcwd() | cd %:p:h | bot split term://cmd | resize 10 | cd <bar> execute 'cd' fnameescape(current_dir)<CR>i]])

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("v", "jj", "<Esc>")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
