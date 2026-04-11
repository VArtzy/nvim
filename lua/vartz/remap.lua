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
vim.keymap.set("n", ",d", vim.diagnostic.setqflist)
vim.keymap.set("n", ",ld", vim.diagnostic.setloclist)

local function tui_popup(cmd)
  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor", style = "minimal", border = "rounded",
    width = math.floor(vim.o.columns * 0.9), height = math.floor(vim.o.lines * 0.9),
    col = math.floor(vim.o.columns * 0.05), row = math.floor(vim.o.lines * 0.05),
  })
  vim.fn.termopen(cmd, { on_exit = function()
    vim.api.nvim_win_close(win, true)
    vim.api.nvim_buf_delete(buf, { force = true })
  end })
  vim.cmd("startinsert")
end
vim.keymap.set("n", ",g", function() tui_popup("lazygit") end)
vim.keymap.set("n", ",c", function() tui_popup("codex resume --last") end)
vim.keymap.set("n", ",gd", function() tui_popup("git diff") end)
