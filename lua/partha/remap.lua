vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted lines with j and k
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")
