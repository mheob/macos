-- space bar leader key
vim.g.mapleader = " "

-- movement
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move current selected line(s) up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move current selected line(s) down

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

