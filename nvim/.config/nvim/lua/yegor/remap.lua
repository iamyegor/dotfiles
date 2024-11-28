vim.g.mapleader = " "
vim.keymap.set("n", "<leader>se", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "10jzz")
vim.keymap.set("n", "<C-u>", "10kzz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "_dP")

-- next greatest remap ever: absjornhaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>d", "\"_d")

vim.keymap.set('n', '<leader>w', '<C-w>w', {noremap = true, silent = true})

vim.keymap.set("i", "<C-BS>", "<C-w>")
