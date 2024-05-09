local ui = require('harpoon.ui')
local term = require('harpoon.term')

vim.cmd([[autocmd BufWrite * lua require('harpoon.mark').add_file()]])
vim.keymap.set("n", "<C-o>", ui.toggle_quick_menu)
vim.keymap.set("n", "nn", function() ui.nav_next() end)
vim.keymap.set("n", "tt", function() ui.nav_prev() end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(4) end)
vim.keymap.set("n", "gt", function() term.gotoTerminal(1) end)
