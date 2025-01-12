-- space bar leader key
vim.g.mapleader = " "

-- movement
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv") -- move current selected line(s) up
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv") -- move current selected line(s) down
vim.keymap.set("n", "<leader>h", "<C-w>h")          -- navigate to the split window on the immediate left
vim.keymap.set("n", "<leader>j", "<C-w>j")          -- navigate to the split window below
vim.keymap.set("n", "<leader>k", "<C-w>k")          -- navigate to the split window top
vim.keymap.set("n", "<leader>l", "<C-w>l")          -- navigate to the split window on the immediate right

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

